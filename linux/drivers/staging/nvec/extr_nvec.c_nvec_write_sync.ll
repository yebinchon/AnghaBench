; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_write_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_write_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvec_chip = type { i8, i32, %struct.nvec_msg*, i32, i32 }
%struct.nvec_msg = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"nvec_sync_write: 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"timeout waiting for sync write to complete\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"nvec_sync_write: pong!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvec_write_sync(%struct.nvec_chip* %0, i8* %1, i16 signext %2, %struct.nvec_msg** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvec_chip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.nvec_msg**, align 8
  store %struct.nvec_chip* %0, %struct.nvec_chip** %6, align 8
  store i8* %1, i8** %7, align 8
  store i16 %2, i16* %8, align 2
  store %struct.nvec_msg** %3, %struct.nvec_msg*** %9, align 8
  %10 = load %struct.nvec_chip*, %struct.nvec_chip** %6, align 8
  %11 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.nvec_msg**, %struct.nvec_msg*** %9, align 8
  store %struct.nvec_msg* null, %struct.nvec_msg** %13, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %18, %22
  %24 = trunc i32 %23 to i8
  %25 = load %struct.nvec_chip*, %struct.nvec_chip** %6, align 8
  %26 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %25, i32 0, i32 0
  store i8 %24, i8* %26, align 8
  %27 = load %struct.nvec_chip*, %struct.nvec_chip** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i16, i16* %8, align 2
  %30 = call i64 @nvec_write_async(%struct.nvec_chip* %27, i8* %28, i16 signext %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.nvec_chip*, %struct.nvec_chip** %6, align 8
  %34 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %74

38:                                               ; preds = %4
  %39 = load %struct.nvec_chip*, %struct.nvec_chip** %6, align 8
  %40 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nvec_chip*, %struct.nvec_chip** %6, align 8
  %43 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 8
  %45 = zext i8 %44 to i32
  %46 = call i32 (i32, i8*, ...) @dev_dbg(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.nvec_chip*, %struct.nvec_chip** %6, align 8
  %48 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %47, i32 0, i32 4
  %49 = call i32 @msecs_to_jiffies(i32 2000)
  %50 = call i32 @wait_for_completion_timeout(i32* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %38
  %53 = load %struct.nvec_chip*, %struct.nvec_chip** %6, align 8
  %54 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_warn(i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.nvec_chip*, %struct.nvec_chip** %6, align 8
  %58 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %74

62:                                               ; preds = %38
  %63 = load %struct.nvec_chip*, %struct.nvec_chip** %6, align 8
  %64 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @dev_dbg(i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.nvec_chip*, %struct.nvec_chip** %6, align 8
  %68 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %67, i32 0, i32 2
  %69 = load %struct.nvec_msg*, %struct.nvec_msg** %68, align 8
  %70 = load %struct.nvec_msg**, %struct.nvec_msg*** %9, align 8
  store %struct.nvec_msg* %69, %struct.nvec_msg** %70, align 8
  %71 = load %struct.nvec_chip*, %struct.nvec_chip** %6, align 8
  %72 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %62, %52, %32
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @nvec_write_async(%struct.nvec_chip*, i8*, i16 signext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
