; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@sock_no_sendpage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_conn*, i32, i8*, i32)* @iscsi_sw_tcp_conn_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_sw_tcp_conn_set_param(%struct.iscsi_cls_conn* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_tcp_conn*, align 8
  %12 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %14 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %13, i32 0, i32 0
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  store %struct.iscsi_conn* %15, %struct.iscsi_conn** %10, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 1
  %18 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %17, align 8
  store %struct.iscsi_tcp_conn* %18, %struct.iscsi_tcp_conn** %11, align 8
  %19 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %11, align 8
  %20 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %19, i32 0, i32 0
  %21 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %20, align 8
  store %struct.iscsi_sw_tcp_conn* %21, %struct.iscsi_sw_tcp_conn** %12, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %57 [
    i32 129, label %23
    i32 130, label %29
    i32 128, label %53
  ]

23:                                               ; preds = %4
  %24 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %24, i32 %25, i8* %26, i32 %27)
  br label %63

29:                                               ; preds = %4
  %30 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %30, i32 %31, i8* %32, i32 %33)
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @sock_no_sendpage, align 4
  br label %49

41:                                               ; preds = %29
  %42 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %12, align 8
  %43 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %41, %39
  %50 = phi i32 [ %40, %39 ], [ %48, %41 ]
  %51 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %12, align 8
  %52 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %63

53:                                               ; preds = %4
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @iscsi_tcp_set_max_r2t(%struct.iscsi_conn* %54, i8* %55)
  store i32 %56, i32* %5, align 4
  br label %64

57:                                               ; preds = %4
  %58 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %58, i32 %59, i8* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %64

63:                                               ; preds = %49, %23
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %57, %53
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @iscsi_set_param(%struct.iscsi_cls_conn*, i32, i8*, i32) #1

declare dso_local i32 @iscsi_tcp_set_max_r2t(%struct.iscsi_conn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
