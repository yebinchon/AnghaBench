; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_ep_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_ep_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.qedi_endpoint* }
%struct.qedi_endpoint = type { i32, i32, i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1
@TCP_IPV4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%pI6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_endpoint*, i32, i8*)* @qedi_ep_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_ep_get_param(%struct.iscsi_endpoint* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qedi_endpoint*, align 8
  %9 = alloca i32, align 4
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %10, i32 0, i32 0
  %12 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %11, align 8
  store %struct.qedi_endpoint* %12, %struct.qedi_endpoint** %8, align 8
  %13 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %8, align 8
  %14 = icmp ne %struct.qedi_endpoint* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOTCONN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %45 [
    i32 128, label %20
    i32 129, label %26
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %8, align 8
  %23 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %9, align 4
  br label %48

26:                                               ; preds = %18
  %27 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %8, align 8
  %28 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TCP_IPV4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %8, align 8
  %35 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %9, align 4
  br label %44

38:                                               ; preds = %26
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %8, align 8
  %41 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %38, %32
  br label %48

45:                                               ; preds = %18
  %46 = load i32, i32* @ENOTCONN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %44, %20
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %45, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
