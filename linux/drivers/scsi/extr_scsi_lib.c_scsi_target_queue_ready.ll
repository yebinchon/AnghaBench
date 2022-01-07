; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_target_queue_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_target_queue_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32 }
%struct.scsi_device = type { i32 }
%struct.scsi_target = type { i32, i32, i32, %struct.scsi_device*, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unblocking target at zero depth\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_device*)* @scsi_target_queue_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_target_queue_ready(%struct.Scsi_Host* %0, %struct.scsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.scsi_target*, align 8
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %5, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %9 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %8)
  store %struct.scsi_target* %9, %struct.scsi_target** %6, align 8
  %10 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %11 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @spin_lock_irq(i32 %17)
  %19 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %19, i32 0, i32 3
  %21 = load %struct.scsi_device*, %struct.scsi_device** %20, align 8
  %22 = icmp ne %struct.scsi_device* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %14
  %24 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %25 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %24, i32 0, i32 3
  %26 = load %struct.scsi_device*, %struct.scsi_device** %25, align 8
  %27 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %28 = icmp ne %struct.scsi_device* %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @spin_unlock_irq(i32 %32)
  store i32 0, i32* %3, align 4
  br label %104

34:                                               ; preds = %23, %14
  %35 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %36 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %37 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %36, i32 0, i32 3
  store %struct.scsi_device* %35, %struct.scsi_device** %37, align 8
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @spin_unlock_irq(i32 %40)
  br label %42

42:                                               ; preds = %34, %2
  %43 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %44 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ule i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %104

48:                                               ; preds = %42
  %49 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %50 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %49, i32 0, i32 1
  %51 = call i32 @atomic_inc_return(i32* %50)
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %54 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %53, i32 0, i32 2
  %55 = call i64 @atomic_read(i32* %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %48
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %80

61:                                               ; preds = %57
  %62 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %63 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %62, i32 0, i32 2
  %64 = call i64 @atomic_dec_return(i32* %63)
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %94

67:                                               ; preds = %61
  %68 = load i32, i32* @KERN_INFO, align 4
  %69 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %70 = call i32 @starget_printk(i32 %68, %struct.scsi_target* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 @SCSI_LOG_MLQUEUE(i32 3, i32 %70)
  br label %72

72:                                               ; preds = %67, %48
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %75 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp uge i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %80

79:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %104

80:                                               ; preds = %78, %60
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %82 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @spin_lock_irq(i32 %83)
  %85 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %86 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %85, i32 0, i32 0
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 1
  %89 = call i32 @list_move_tail(i32* %86, i32* %88)
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %91 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @spin_unlock_irq(i32 %92)
  br label %94

94:                                               ; preds = %80, %66
  %95 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %96 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ugt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %101 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %100, i32 0, i32 1
  %102 = call i32 @atomic_dec(i32* %101)
  br label %103

103:                                              ; preds = %99, %94
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %79, %47, %29
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @SCSI_LOG_MLQUEUE(i32, i32) #1

declare dso_local i32 @starget_printk(i32, %struct.scsi_target*, i8*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
