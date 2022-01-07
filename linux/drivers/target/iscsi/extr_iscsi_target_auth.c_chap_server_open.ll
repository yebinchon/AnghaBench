; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_auth.c_chap_server_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_auth.c_chap_server_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_chap = type { i32, i32 }
%struct.iscsi_conn = type { %struct.TYPE_2__*, %struct.iscsi_chap* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_node_auth = type { i32 }

@NAF_USERID_SET = common dso_local global i32 0, align 4
@NAF_PASSWORD_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"CHAP user or password not set for Initiator ACL\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"[server] Got CHAP_A=5\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CHAP_A=5\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"[server] Sending CHAP_A=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unsupported CHAP_A value\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"CHAP_I=%d\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"[server] Sending CHAP_I=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_chap* (%struct.iscsi_conn*, %struct.iscsi_node_auth*, i8*, i8*, i32*)* @chap_server_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_chap* @chap_server_open(%struct.iscsi_conn* %0, %struct.iscsi_node_auth* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.iscsi_chap*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_node_auth*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iscsi_chap*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_node_auth* %1, %struct.iscsi_node_auth** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %8, align 8
  %15 = getelementptr inbounds %struct.iscsi_node_auth, %struct.iscsi_node_auth* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NAF_USERID_SET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %8, align 8
  %22 = getelementptr inbounds %struct.iscsi_node_auth, %struct.iscsi_node_auth* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NAF_PASSWORD_SET, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20, %5
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store %struct.iscsi_chap* null, %struct.iscsi_chap** %6, align 8
  br label %103

29:                                               ; preds = %20
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.iscsi_chap* @kzalloc(i32 8, i32 %30)
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %33 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %32, i32 0, i32 1
  store %struct.iscsi_chap* %31, %struct.iscsi_chap** %33, align 8
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 1
  %36 = load %struct.iscsi_chap*, %struct.iscsi_chap** %35, align 8
  %37 = icmp ne %struct.iscsi_chap* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  store %struct.iscsi_chap* null, %struct.iscsi_chap** %6, align 8
  br label %103

39:                                               ; preds = %29
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %41 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %40, i32 0, i32 1
  %42 = load %struct.iscsi_chap*, %struct.iscsi_chap** %41, align 8
  store %struct.iscsi_chap* %42, %struct.iscsi_chap** %13, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @chap_check_algorithm(i8* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  switch i32 %45, label %61 [
    i32 129, label %46
    i32 128, label %60
  ]

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.iscsi_chap*, %struct.iscsi_chap** %13, align 8
  %55 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %54, i32 0, i32 0
  store i32 129, i32* %55, align 4
  %56 = load %struct.iscsi_chap*, %struct.iscsi_chap** %13, align 8
  %57 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %65

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %39, %60
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %63 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %64 = call i32 @chap_close(%struct.iscsi_conn* %63)
  store %struct.iscsi_chap* null, %struct.iscsi_chap** %6, align 8
  br label %103

65:                                               ; preds = %46
  %66 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %67 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.iscsi_chap*, %struct.iscsi_chap** %13, align 8
  %73 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load %struct.iscsi_chap*, %struct.iscsi_chap** %13, align 8
  %80 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.iscsi_chap*, %struct.iscsi_chap** %13, align 8
  %90 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  %93 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = call i64 @chap_gen_challenge(%struct.iscsi_conn* %93, i32 1, i8* %94, i32* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %65
  %99 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %100 = call i32 @chap_close(%struct.iscsi_conn* %99)
  store %struct.iscsi_chap* null, %struct.iscsi_chap** %6, align 8
  br label %103

101:                                              ; preds = %65
  %102 = load %struct.iscsi_chap*, %struct.iscsi_chap** %13, align 8
  store %struct.iscsi_chap* %102, %struct.iscsi_chap** %6, align 8
  br label %103

103:                                              ; preds = %101, %98, %61, %38, %27
  %104 = load %struct.iscsi_chap*, %struct.iscsi_chap** %6, align 8
  ret %struct.iscsi_chap* %104
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.iscsi_chap* @kzalloc(i32, i32) #1

declare dso_local i32 @chap_check_algorithm(i8*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @chap_close(%struct.iscsi_conn*) #1

declare dso_local i64 @chap_gen_challenge(%struct.iscsi_conn*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
