; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_claim_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_claim_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, i32, i32 }

@SLGT_REG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"synclink_gt\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s reg addr conflict, addr=%08X\0A\00", align 1
@DiagStatus_AddressConflict = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s can't map device registers, addr=%08X\0A\00", align 1
@DiagStatus_CantAssignPciResources = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @claim_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claim_resources(%struct.slgt_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slgt_info*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %3, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %5 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SLGT_REG_SIZE, align 4
  %8 = call i32* @request_mem_region(i32 %6, i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %12 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %15 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @DBGERR(i8* %18)
  %20 = load i32, i32* @DiagStatus_AddressConflict, align 4
  %21 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %22 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %52

23:                                               ; preds = %1
  %24 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %25 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23
  %27 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %28 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SLGT_REG_SIZE, align 4
  %31 = call i32 @ioremap_nocache(i32 %29, i32 %30)
  %32 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %33 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %35 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %26
  %39 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %40 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %43 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @DBGERR(i8* %46)
  %48 = load i32, i32* @DiagStatus_CantAssignPciResources, align 4
  %49 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %50 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %52

51:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %57

52:                                               ; preds = %38, %10
  %53 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %54 = call i32 @release_resources(%struct.slgt_info* %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %51
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32* @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @DBGERR(i8*) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @release_resources(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
