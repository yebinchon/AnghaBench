; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp870_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp870_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i8, i32, i32 }
%struct.atp_unit = type { i8*, i32*, i32*, i64*, i32*, %struct.pci_dev* }
%struct.pci_dev = type { i64, i32, i32 }

@PCI_DEVICE_ID_ARTOP_AEC7610 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_ARTOP_AEC7612UW = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_ARTOP_AEC7612SUW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"ACARD AEC-671X PCI Ultra/W SCSI-2/3 Host Adapter: IO:%lx, IRQ:%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @atp870_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atp870_init(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.atp_unit*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %10 = call %struct.atp_unit* @shost_priv(%struct.Scsi_Host* %9)
  store %struct.atp_unit* %10, %struct.atp_unit** %3, align 8
  %11 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %12 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %11, i32 0, i32 5
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI_DEVICE_ID_ARTOP_AEC7610, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %36, label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCI_DEVICE_ID_ARTOP_AEC7612UW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCI_DEVICE_ID_ARTOP_AEC7612SUW, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %30, %24, %19
  %37 = phi i1 [ true, %24 ], [ true, %19 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i32 @pci_read_config_byte(%struct.pci_dev* %39, i32 73, i8* %6)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 2
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_info(i32* %42, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %54 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %58 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 32
  %61 = sext i32 %60 to i64
  %62 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %63 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  store i64 %61, i64* %65, align 8
  %66 = load i8, i8* %6, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 7
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %6, align 1
  %70 = load i8, i8* %6, align 1
  %71 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %72 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 %70, i8* %74, align 1
  %75 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %76 = call i32 @atp_readb_pci(%struct.atp_unit* %75, i32 0, i32 2)
  store i32 %76, i32* %7, align 4
  %77 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %78 = call i32 @atp_readb_base(%struct.atp_unit* %77, i32 45)
  %79 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %80 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %78, i32* %82, align 4
  %83 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %84 = call i32 @atp_readw_base(%struct.atp_unit* %83, i32 46)
  %85 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %86 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %84, i32* %88, align 4
  %89 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %90 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  %96 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %97 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 32, i32* %99, align 4
  %100 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %101 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 65535, i32* %103, align 4
  br label %104

104:                                              ; preds = %95, %36
  %105 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %107, 7
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %111 = call i32 @atp_writeb_base(%struct.atp_unit* %110, i32 62, i32 0)
  br label %112

112:                                              ; preds = %109, %104
  %113 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %114 = call i32 @atp_readb_base(%struct.atp_unit* %113, i32 58)
  %115 = and i32 %114, 243
  %116 = or i32 %115, 16
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %5, align 1
  %118 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %119 = load i8, i8* %5, align 1
  %120 = zext i8 %119 to i32
  %121 = call i32 @atp_writeb_base(%struct.atp_unit* %118, i32 58, i32 %120)
  %122 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %123 = load i8, i8* %5, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 223
  %126 = call i32 @atp_writeb_base(%struct.atp_unit* %122, i32 58, i32 %125)
  %127 = call i32 @msleep(i32 32)
  %128 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %129 = load i8, i8* %5, align 1
  %130 = zext i8 %129 to i32
  %131 = call i32 @atp_writeb_base(%struct.atp_unit* %128, i32 58, i32 %130)
  %132 = call i32 @msleep(i32 32)
  %133 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %134 = load i8, i8* %6, align 1
  %135 = call i32 @atp_set_host_id(%struct.atp_unit* %133, i32 0, i8 zeroext %134)
  %136 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @tscam(%struct.Scsi_Host* %136, i32 %137, i32 %138)
  %140 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %141 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %142 = call i32 @atp_readb_base(%struct.atp_unit* %141, i32 58)
  %143 = or i32 %142, 16
  %144 = call i32 @atp_writeb_base(%struct.atp_unit* %140, i32 58, i32 %143)
  %145 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @atp_is(%struct.atp_unit* %145, i32 0, i32 %146, i32 0)
  %148 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %149 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %150 = call i32 @atp_readb_base(%struct.atp_unit* %149, i32 58)
  %151 = and i32 %150, 239
  %152 = call i32 @atp_writeb_base(%struct.atp_unit* %148, i32 58, i32 %151)
  %153 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %154 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %155 = call i32 @atp_readb_base(%struct.atp_unit* %154, i32 59)
  %156 = or i32 %155, 32
  %157 = call i32 @atp_writeb_base(%struct.atp_unit* %153, i32 59, i32 %156)
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 16, i32 8
  %162 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %163 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load i8, i8* %6, align 1
  %165 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %166 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %165, i32 0, i32 1
  store i8 %164, i8* %166, align 4
  ret void
}

declare dso_local %struct.atp_unit* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @atp_readb_pci(%struct.atp_unit*, i32, i32) #1

declare dso_local i32 @atp_readb_base(%struct.atp_unit*, i32) #1

declare dso_local i32 @atp_readw_base(%struct.atp_unit*, i32) #1

declare dso_local i32 @atp_writeb_base(%struct.atp_unit*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atp_set_host_id(%struct.atp_unit*, i32, i8 zeroext) #1

declare dso_local i32 @tscam(%struct.Scsi_Host*, i32, i32) #1

declare dso_local i32 @atp_is(%struct.atp_unit*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
