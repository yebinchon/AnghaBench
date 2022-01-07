; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_do_init_gfxdevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_do_init_gfxdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }
%struct.sisusb_packet = type { i32, i32, i32 }

@SISUSB_PCI_MEMBASE = common dso_local global i32 0, align 4
@SISUSB_PCI_MMIOBASE = common dso_local global i32 0, align 4
@SISUSB_PCI_IOPORTBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*)* @sisusb_do_init_gfxdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_do_init_gfxdevice(%struct.sisusb_usb_data* %0) #0 {
  %2 = alloca %struct.sisusb_usb_data*, align 8
  %3 = alloca %struct.sisusb_packet, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %2, align 8
  %6 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 0
  store i32 31, i32* %6, align 4
  %7 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 1
  store i32 804, i32* %7, align 4
  %8 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 2
  store i32 4, i32* %8, align 4
  %9 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %10 = call i32 @sisusb_send_bridge_packet(%struct.sisusb_usb_data* %9, i32 10, %struct.sisusb_packet* %3, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 0
  store i32 31, i32* %11, align 4
  %12 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 1
  store i32 868, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 2
  store i32 4, i32* %13, align 4
  %14 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %15 = call i32 @sisusb_send_bridge_packet(%struct.sisusb_usb_data* %14, i32 10, %struct.sisusb_packet* %3, i32 0)
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 0
  store i32 31, i32* %18, align 4
  %19 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 1
  store i32 900, i32* %19, align 4
  %20 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 2
  store i32 4, i32* %20, align 4
  %21 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %22 = call i32 @sisusb_send_bridge_packet(%struct.sisusb_usb_data* %21, i32 10, %struct.sisusb_packet* %3, i32 0)
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 0
  store i32 31, i32* %25, align 4
  %26 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 1
  store i32 256, i32* %26, align 4
  %27 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 2
  store i32 1792, i32* %27, align 4
  %28 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %29 = call i32 @sisusb_send_bridge_packet(%struct.sisusb_usb_data* %28, i32 10, %struct.sisusb_packet* %3, i32 0)
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 0
  store i32 15, i32* %32, align 4
  %33 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 1
  store i32 4, i32* %33, align 4
  %34 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %35 = call i32 @sisusb_send_bridge_packet(%struct.sisusb_usb_data* %34, i32 6, %struct.sisusb_packet* %3, i32 0)
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 23
  store i32 %40, i32* %38, align 4
  %41 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %42 = call i32 @sisusb_send_bridge_packet(%struct.sisusb_usb_data* %41, i32 10, %struct.sisusb_packet* %3, i32 0)
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %46 = call i32 @sisusb_read_pci_config(%struct.sisusb_usb_data* %45, i32 16, i32* %5)
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %50 = call i32 @sisusb_write_pci_config(%struct.sisusb_usb_data* %49, i32 16, i32 -16)
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %54 = call i32 @sisusb_read_pci_config(%struct.sisusb_usb_data* %53, i32 16, i32* %5)
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 15
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @SISUSB_PCI_MEMBASE, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @sisusb_write_pci_config(%struct.sisusb_usb_data* %62, i32 16, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %68 = call i32 @sisusb_read_pci_config(%struct.sisusb_usb_data* %67, i32 20, i32* %5)
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %72 = call i32 @sisusb_write_pci_config(%struct.sisusb_usb_data* %71, i32 20, i32 -16)
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %76 = call i32 @sisusb_read_pci_config(%struct.sisusb_usb_data* %75, i32 20, i32* %5)
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, 15
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @SISUSB_PCI_MMIOBASE, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @sisusb_write_pci_config(%struct.sisusb_usb_data* %84, i32 20, i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %90 = call i32 @sisusb_read_pci_config(%struct.sisusb_usb_data* %89, i32 24, i32* %5)
  %91 = load i32, i32* %4, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %94 = call i32 @sisusb_write_pci_config(%struct.sisusb_usb_data* %93, i32 24, i32 -16)
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  %97 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %98 = call i32 @sisusb_read_pci_config(%struct.sisusb_usb_data* %97, i32 24, i32* %5)
  %99 = load i32, i32* %4, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %101, 15
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* @SISUSB_PCI_IOPORTBASE, align 4
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @sisusb_write_pci_config(%struct.sisusb_usb_data* %106, i32 24, i32 %107)
  %109 = load i32, i32* %4, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %4, align 4
  %111 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %112 = call i32 @sisusb_read_pci_config(%struct.sisusb_usb_data* %111, i32 4, i32* %5)
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, 3
  store i32 %116, i32* %5, align 4
  %117 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @sisusb_write_pci_config(%struct.sisusb_usb_data* %117, i32 4, i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %1
  %125 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 0
  store i32 31, i32* %125, align 4
  %126 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 1
  store i32 80, i32* %126, align 4
  %127 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %3, i32 0, i32 2
  store i32 255, i32* %127, align 4
  %128 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %129 = call i32 @sisusb_send_bridge_packet(%struct.sisusb_usb_data* %128, i32 10, %struct.sisusb_packet* %3, i32 0)
  %130 = load i32, i32* %4, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %124, %1
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @sisusb_send_bridge_packet(%struct.sisusb_usb_data*, i32, %struct.sisusb_packet*, i32) #1

declare dso_local i32 @sisusb_read_pci_config(%struct.sisusb_usb_data*, i32, i32*) #1

declare dso_local i32 @sisusb_write_pci_config(%struct.sisusb_usb_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
