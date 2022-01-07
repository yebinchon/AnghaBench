; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_auth.c_chap_got_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_auth.c_chap_got_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_chap* }
%struct.iscsi_chap = type { i32 }
%struct.iscsi_node_auth = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Unknown CHAP digest type %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_node_auth*, i8*, i8*, i32*)* @chap_got_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chap_got_response(%struct.iscsi_conn* %0, %struct.iscsi_node_auth* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_node_auth*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.iscsi_chap*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_node_auth* %1, %struct.iscsi_node_auth** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 0
  %15 = load %struct.iscsi_chap*, %struct.iscsi_chap** %14, align 8
  store %struct.iscsi_chap* %15, %struct.iscsi_chap** %12, align 8
  %16 = load %struct.iscsi_chap*, %struct.iscsi_chap** %12, align 8
  %17 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %29 [
    i32 128, label %19
  ]

19:                                               ; preds = %5
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %21 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @chap_server_compute_md5(%struct.iscsi_conn* %20, %struct.iscsi_node_auth* %21, i8* %22, i8* %23, i32* %24)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %34

28:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %34

29:                                               ; preds = %5
  %30 = load %struct.iscsi_chap*, %struct.iscsi_chap** %12, align 8
  %31 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 -1, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %28, %27
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @chap_server_compute_md5(%struct.iscsi_conn*, %struct.iscsi_node_auth*, i8*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
