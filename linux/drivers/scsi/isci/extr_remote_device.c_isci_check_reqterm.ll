; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_isci_check_reqterm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_device.c_isci_check_reqterm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32 }
%struct.isci_remote_device = type { i32 }
%struct.isci_request = type { i32 }

@IREQ_ABORT_PATH_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*, %struct.isci_remote_device*, %struct.isci_request*, i32)* @isci_check_reqterm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_check_reqterm(%struct.isci_host* %0, %struct.isci_remote_device* %1, %struct.isci_request* %2, i32 %3) #0 {
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca %struct.isci_remote_device*, align 8
  %7 = alloca %struct.isci_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %5, align 8
  store %struct.isci_remote_device* %1, %struct.isci_remote_device** %6, align 8
  store %struct.isci_request* %2, %struct.isci_request** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %12 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %11, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @isci_compare_suspendcount(%struct.isci_remote_device* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* @IREQ_ABORT_PATH_ACTIVE, align 4
  %21 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  %22 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %21, i32 0, i32 0
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %19, %4
  %27 = phi i1 [ false, %4 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %30 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %29, i32 0, i32 0
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* %10, align 4
  ret i32 %33
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @isci_compare_suspendcount(%struct.isci_remote_device*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
