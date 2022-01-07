; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_auth.c_chap_gen_challenge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_auth.c_chap_gen_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_chap* }
%struct.iscsi_chap = type { i32 }

@CHAP_CHALLENGE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"CHAP_C=0x%s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"[%s] Sending CHAP_C=0x%s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, i32, i8*, i32*)* @chap_gen_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chap_gen_challenge(%struct.iscsi_conn* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.iscsi_chap*, align 8
  %14 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @CHAP_CHALLENGE_LENGTH, align 4
  %16 = mul nsw i32 %15, 2
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 0
  %23 = load %struct.iscsi_chap*, %struct.iscsi_chap** %22, align 8
  store %struct.iscsi_chap* %23, %struct.iscsi_chap** %13, align 8
  %24 = load i32, i32* @CHAP_CHALLENGE_LENGTH, align 4
  %25 = mul nsw i32 %24, 2
  %26 = add nsw i32 %25, 1
  %27 = call i32 @memset(i8* %20, i32 0, i32 %26)
  %28 = load %struct.iscsi_chap*, %struct.iscsi_chap** %13, align 8
  %29 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CHAP_CHALLENGE_LENGTH, align 4
  %32 = call i32 @get_random_bytes_wait(i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %63

38:                                               ; preds = %4
  %39 = load %struct.iscsi_chap*, %struct.iscsi_chap** %13, align 8
  %40 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CHAP_CHALLENGE_LENGTH, align 4
  %43 = call i32 @bin2hex(i8* %20, i32 %41, i32 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = call i64 @sprintf(i8* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %20)
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %52, %49
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %61, i8* %20)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %63

63:                                               ; preds = %38, %36
  %64 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @get_random_bytes_wait(i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @bin2hex(i8*, i32, i32) #2

declare dso_local i64 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @pr_debug(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
