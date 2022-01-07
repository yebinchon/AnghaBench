; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_find_outstanding_commands_for_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_find_outstanding_commands_for_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, i32, %struct.CommandList* }
%struct.CommandList = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*)* @hpsa_find_outstanding_commands_for_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_find_outstanding_commands_for_dev(%struct.ctlr_info* %0, %struct.hpsa_scsi_dev_t* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.CommandList*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %57, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %13 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %10
  %17 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %18 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %17, i32 0, i32 2
  %19 = load %struct.CommandList*, %struct.CommandList** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %19, i64 %21
  store %struct.CommandList* %22, %struct.CommandList** %7, align 8
  %23 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %24 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %23, i32 0, i32 0
  %25 = call i32 @atomic_inc_return(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %53

28:                                               ; preds = %16
  %29 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %30 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %31 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %32 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %4, align 8
  %33 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @hpsa_cmd_dev_match(%struct.ctlr_info* %29, %struct.CommandList* %30, %struct.hpsa_scsi_dev_t* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %28
  %38 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %39 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %38, i32 0, i32 1
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %43 = call i32 @hpsa_is_cmd_idle(%struct.CommandList* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %37
  %49 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %50 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %49, i32 0, i32 1
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %28, %16
  %54 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %55 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %56 = call i32 @cmd_free(%struct.ctlr_info* %54, %struct.CommandList* %55)
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %10

60:                                               ; preds = %10
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @hpsa_cmd_dev_match(%struct.ctlr_info*, %struct.CommandList*, %struct.hpsa_scsi_dev_t*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hpsa_is_cmd_idle(%struct.CommandList*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cmd_free(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
