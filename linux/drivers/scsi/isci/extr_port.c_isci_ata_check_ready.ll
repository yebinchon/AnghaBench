; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_isci_ata_check_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_isci_ata_check_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.isci_port* }
%struct.isci_port = type { i32, i32 }
%struct.isci_host = type { i32 }
%struct.isci_remote_device = type { i32 }

@IPORT_RESET_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_ata_check_ready(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca %struct.isci_host*, align 8
  %5 = alloca %struct.isci_remote_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %9 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.isci_port*, %struct.isci_port** %11, align 8
  store %struct.isci_port* %12, %struct.isci_port** %3, align 8
  %13 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %14 = call %struct.isci_host* @dev_to_ihost(%struct.domain_device* %13)
  store %struct.isci_host* %14, %struct.isci_host** %4, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %16 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %20 = call %struct.isci_remote_device* @isci_lookup_device(%struct.domain_device* %19)
  store %struct.isci_remote_device* %20, %struct.isci_remote_device** %5, align 8
  %21 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %22 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %26 = icmp ne %struct.isci_remote_device* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %43

28:                                               ; preds = %1
  %29 = load i32, i32* @IPORT_RESET_PENDING, align 4
  %30 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %31 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %30, i32 0, i32 1
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %43

35:                                               ; preds = %28
  %36 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %37 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %35, %34, %27
  %44 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %45 = call i32 @isci_put_device(%struct.isci_remote_device* %44)
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local %struct.isci_host* @dev_to_ihost(%struct.domain_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.isci_remote_device* @isci_lookup_device(%struct.domain_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @isci_put_device(%struct.isci_remote_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
