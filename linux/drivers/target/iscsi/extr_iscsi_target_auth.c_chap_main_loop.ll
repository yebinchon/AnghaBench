; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_auth.c_chap_main_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_auth.c_chap_main_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_chap* }
%struct.iscsi_chap = type { i64 }
%struct.iscsi_node_auth = type { i64 }

@CHAP_STAGE_SERVER_AIC = common dso_local global i64 0, align 8
@CHAP_STAGE_SERVER_NR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chap_main_loop(%struct.iscsi_conn* %0, %struct.iscsi_node_auth* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.iscsi_node_auth*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.iscsi_chap*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_node_auth* %1, %struct.iscsi_node_auth** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 0
  %17 = load %struct.iscsi_chap*, %struct.iscsi_chap** %16, align 8
  store %struct.iscsi_chap* %17, %struct.iscsi_chap** %14, align 8
  %18 = load %struct.iscsi_chap*, %struct.iscsi_chap** %14, align 8
  %19 = icmp ne %struct.iscsi_chap* %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %6
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %22 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call %struct.iscsi_chap* @chap_server_open(%struct.iscsi_conn* %21, %struct.iscsi_node_auth* %22, i8* %23, i8* %24, i32* %25)
  store %struct.iscsi_chap* %26, %struct.iscsi_chap** %14, align 8
  %27 = load %struct.iscsi_chap*, %struct.iscsi_chap** %14, align 8
  %28 = icmp ne %struct.iscsi_chap* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 2, i32* %7, align 4
  br label %71

30:                                               ; preds = %20
  %31 = load i64, i64* @CHAP_STAGE_SERVER_AIC, align 8
  %32 = load %struct.iscsi_chap*, %struct.iscsi_chap** %14, align 8
  %33 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %7, align 4
  br label %71

34:                                               ; preds = %6
  %35 = load %struct.iscsi_chap*, %struct.iscsi_chap** %14, align 8
  %36 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHAP_STAGE_SERVER_AIC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  %41 = load i8*, i8** %10, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @convert_null_to_semi(i8* %41, i32 %43)
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %46 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i64 @chap_got_response(%struct.iscsi_conn* %45, %struct.iscsi_node_auth* %46, i8* %47, i8* %48, i32* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %54 = call i32 @chap_close(%struct.iscsi_conn* %53)
  store i32 2, i32* %7, align 4
  br label %71

55:                                               ; preds = %40
  %56 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %9, align 8
  %57 = getelementptr inbounds %struct.iscsi_node_auth, %struct.iscsi_node_auth* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i64, i64* @CHAP_STAGE_SERVER_NR, align 8
  %62 = load %struct.iscsi_chap*, %struct.iscsi_chap** %14, align 8
  %63 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %66

64:                                               ; preds = %55
  %65 = load i32*, i32** %13, align 8
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %68 = call i32 @chap_close(%struct.iscsi_conn* %67)
  store i32 1, i32* %7, align 4
  br label %71

69:                                               ; preds = %34
  br label %70

70:                                               ; preds = %69
  store i32 2, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %66, %52, %30, %29
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local %struct.iscsi_chap* @chap_server_open(%struct.iscsi_conn*, %struct.iscsi_node_auth*, i8*, i8*, i32*) #1

declare dso_local i32 @convert_null_to_semi(i8*, i32) #1

declare dso_local i64 @chap_got_response(%struct.iscsi_conn*, %struct.iscsi_node_auth*, i8*, i8*, i32*) #1

declare dso_local i32 @chap_close(%struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
