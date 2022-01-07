; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_host_queue_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_host_queue_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32, i64, i32, i32 }
%struct.scsi_device = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unblocking host at zero depth\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.Scsi_Host*, %struct.scsi_device*)* @scsi_host_queue_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_host_queue_ready(%struct.request_queue* %0, %struct.Scsi_Host* %1, %struct.scsi_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %6, align 8
  store %struct.scsi_device* %2, %struct.scsi_device** %7, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %10 = call i64 @scsi_host_in_recovery(%struct.Scsi_Host* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %102

13:                                               ; preds = %3
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 5
  %16 = call i32 @atomic_inc_return(i32* %15)
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 4
  %20 = call i64 @atomic_read(i32* %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %79

26:                                               ; preds = %22
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 4
  %29 = call i64 @atomic_dec_return(i32* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %99

32:                                               ; preds = %26
  %33 = load i32, i32* @KERN_INFO, align 4
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %35 = call i32 @shost_printk(i32 %33, %struct.Scsi_Host* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @SCSI_LOG_MLQUEUE(i32 3, i32 %35)
  br label %37

37:                                               ; preds = %32, %13
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ugt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp uge i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %79

49:                                               ; preds = %42, %37
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %79

55:                                               ; preds = %49
  %56 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %57 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %56, i32 0, i32 0
  %58 = call i64 @list_empty(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %55
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %62 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @spin_lock_irq(i32 %63)
  %65 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 0
  %67 = call i64 @list_empty(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %60
  %70 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %71 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %70, i32 0, i32 0
  %72 = call i32 @list_del_init(i32* %71)
  br label %73

73:                                               ; preds = %69, %60
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @spin_unlock_irq(i32 %76)
  br label %78

78:                                               ; preds = %73, %55
  store i32 1, i32* %4, align 4
  br label %102

79:                                               ; preds = %54, %48, %25
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %81 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @spin_lock_irq(i32 %82)
  %84 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %85 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %84, i32 0, i32 0
  %86 = call i64 @list_empty(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %90 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %89, i32 0, i32 0
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %92 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %91, i32 0, i32 2
  %93 = call i32 @list_add_tail(i32* %90, i32* %92)
  br label %94

94:                                               ; preds = %88, %79
  %95 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %96 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @spin_unlock_irq(i32 %97)
  br label %99

99:                                               ; preds = %94, %31
  %100 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %101 = call i32 @scsi_dec_host_busy(%struct.Scsi_Host* %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %78, %12
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @scsi_host_in_recovery(%struct.Scsi_Host*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @SCSI_LOG_MLQUEUE(i32, i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @scsi_dec_host_busy(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
