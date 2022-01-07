; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_msg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_msg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvec_msg = type { i32 }
%struct.nvec_chip = type { i32, %struct.nvec_msg* }

@NVEC_MSG_TX = common dso_local global i32 0, align 4
@NVEC_POOL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"INFO: Allocate %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate %s buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvec_msg* (%struct.nvec_chip*, i32)* @nvec_msg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvec_msg* @nvec_msg_alloc(%struct.nvec_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nvec_msg*, align 8
  %4 = alloca %struct.nvec_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvec_chip* %0, %struct.nvec_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NVEC_MSG_TX, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @NVEC_POOL_SIZE, align 4
  %12 = sdiv i32 %11, 4
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi i32 [ %12, %10 ], [ 0, %13 ]
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %43, %14
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NVEC_POOL_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load %struct.nvec_chip*, %struct.nvec_chip** %4, align 8
  %22 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %21, i32 0, i32 1
  %23 = load %struct.nvec_msg*, %struct.nvec_msg** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %23, i64 %25
  %27 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %26, i32 0, i32 0
  %28 = call i64 @atomic_xchg(i32* %27, i32 1)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.nvec_chip*, %struct.nvec_chip** %4, align 8
  %32 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_vdbg(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.nvec_chip*, %struct.nvec_chip** %4, align 8
  %37 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %36, i32 0, i32 1
  %38 = load %struct.nvec_msg*, %struct.nvec_msg** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %38, i64 %40
  store %struct.nvec_msg* %41, %struct.nvec_msg** %3, align 8
  br label %56

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %16

46:                                               ; preds = %16
  %47 = load %struct.nvec_chip*, %struct.nvec_chip** %4, align 8
  %48 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @NVEC_MSG_TX, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %55 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  store %struct.nvec_msg* null, %struct.nvec_msg** %3, align 8
  br label %56

56:                                               ; preds = %46, %30
  %57 = load %struct.nvec_msg*, %struct.nvec_msg** %3, align 8
  ret %struct.nvec_msg* %57
}

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
