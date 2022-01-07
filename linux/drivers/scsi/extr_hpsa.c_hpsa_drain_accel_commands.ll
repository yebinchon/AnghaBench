; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_drain_accel_commands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_drain_accel_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.CommandList* }
%struct.CommandList = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*)* @hpsa_drain_accel_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_drain_accel_commands(%struct.ctlr_info* %0) #0 {
  %2 = alloca %struct.ctlr_info*, align 8
  %3 = alloca %struct.CommandList*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %2, align 8
  store %struct.CommandList* null, %struct.CommandList** %3, align 8
  br label %7

7:                                                ; preds = %46, %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %37, %7
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %11 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %16 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %15, i32 0, i32 1
  %17 = load %struct.CommandList*, %struct.CommandList** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %17, i64 %19
  store %struct.CommandList* %20, %struct.CommandList** %3, align 8
  %21 = load %struct.CommandList*, %struct.CommandList** %3, align 8
  %22 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %21, i32 0, i32 0
  %23 = call i32 @atomic_inc_return(i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %14
  %27 = load %struct.CommandList*, %struct.CommandList** %3, align 8
  %28 = call i64 @is_accelerated_cmd(%struct.CommandList* %27)
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %26, %14
  %34 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %35 = load %struct.CommandList*, %struct.CommandList** %3, align 8
  %36 = call i32 @cmd_free(%struct.ctlr_info* %34, %struct.CommandList* %35)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %8

40:                                               ; preds = %8
  %41 = load i32, i32* %5, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %47

44:                                               ; preds = %40
  %45 = call i32 @msleep(i32 100)
  br label %46

46:                                               ; preds = %44
  br i1 true, label %7, label %47

47:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @is_accelerated_cmd(%struct.CommandList*) #1

declare dso_local i32 @cmd_free(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
