; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_oak.c_oakscsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_oak.c_oakscsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { i32 }
%struct.ecard_id = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@oakscsi_template = common dso_local global i32 0, align 4
@ECARD_RES_MEMC = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i32 0, align 4
@FLAG_DMA_FIXUP = common dso_local global i32 0, align 4
@FLAG_LATE_DMA_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.expansion_card*, %struct.ecard_id*)* @oakscsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oakscsi_probe(%struct.expansion_card* %0, %struct.ecard_id* %1) #0 {
  %3 = alloca %struct.expansion_card*, align 8
  %4 = alloca %struct.ecard_id*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  store %struct.expansion_card* %0, %struct.expansion_card** %3, align 8
  store %struct.ecard_id* %1, %struct.ecard_id** %4, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %10 = call i32 @ecard_request_resources(%struct.expansion_card* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %80

14:                                               ; preds = %2
  %15 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @oakscsi_template, i32 4)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %5, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %17 = icmp ne %struct.Scsi_Host* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %77

21:                                               ; preds = %14
  %22 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %23 = load i32, i32* @ECARD_RES_MEMC, align 4
  %24 = call i32 @ecard_resource_start(%struct.expansion_card* %22, i32 %23)
  %25 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %26 = load i32, i32* @ECARD_RES_MEMC, align 4
  %27 = call i32 @ecard_resource_len(%struct.expansion_card* %25, i32 %26)
  %28 = call i32 @ioremap(i32 %24, i32 %27)
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %30 = call %struct.TYPE_2__* @priv(%struct.Scsi_Host* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %33 = call %struct.TYPE_2__* @priv(%struct.Scsi_Host* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %21
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %74

40:                                               ; preds = %21
  %41 = load i32, i32* @NO_IRQ, align 4
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %45 = load i32, i32* @FLAG_DMA_FIXUP, align 4
  %46 = load i32, i32* @FLAG_LATE_DMA_SETUP, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @NCR5380_init(%struct.Scsi_Host* %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %68

52:                                               ; preds = %40
  %53 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %54 = call i32 @NCR5380_maybe_reset_bus(%struct.Scsi_Host* %53)
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %56 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %57 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %56, i32 0, i32 0
  %58 = call i32 @scsi_add_host(%struct.Scsi_Host* %55, i32* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %65

62:                                               ; preds = %52
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %64 = call i32 @scsi_scan_host(%struct.Scsi_Host* %63)
  br label %80

65:                                               ; preds = %61
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %67 = call i32 @NCR5380_exit(%struct.Scsi_Host* %66)
  br label %68

68:                                               ; preds = %65, %51
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %70 = call %struct.TYPE_2__* @priv(%struct.Scsi_Host* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @iounmap(i32 %72)
  br label %74

74:                                               ; preds = %68, %37
  %75 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %76 = call i32 @scsi_host_put(%struct.Scsi_Host* %75)
  br label %77

77:                                               ; preds = %74, %18
  %78 = load %struct.expansion_card*, %struct.expansion_card** %3, align 8
  %79 = call i32 @ecard_release_resources(%struct.expansion_card* %78)
  br label %80

80:                                               ; preds = %77, %62, %13
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @ecard_request_resources(%struct.expansion_card*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @ecard_resource_start(%struct.expansion_card*, i32) #1

declare dso_local i32 @ecard_resource_len(%struct.expansion_card*, i32) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.Scsi_Host*) #1

declare dso_local i32 @NCR5380_init(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @NCR5380_maybe_reset_bus(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @NCR5380_exit(%struct.Scsi_Host*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @ecard_release_resources(%struct.expansion_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
