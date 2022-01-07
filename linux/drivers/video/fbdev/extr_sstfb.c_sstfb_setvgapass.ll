; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sstfb.c_sstfb_setvgapass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sstfb.c_sstfb_setvgapass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.sstfb_par* }
%struct.sstfb_par = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_INIT_ENABLE = common dso_local global i32 0, align 4
@PCI_EN_INIT_WR = common dso_local global i32 0, align 4
@FBIINIT0 = common dso_local global i32 0, align 4
@DIS_VGA_PASSTHROUGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Enabling VGA pass-through\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Disabling VGA pass-through\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32)* @sstfb_setvgapass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sstfb_setvgapass(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sstfb_par*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.sstfb_par*, %struct.sstfb_par** %10, align 8
  store %struct.sstfb_par* %11, %struct.sstfb_par** %5, align 8
  %12 = load %struct.sstfb_par*, %struct.sstfb_par** %5, align 8
  %13 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %12, i32 0, i32 1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %4, align 4
  %19 = load %struct.sstfb_par*, %struct.sstfb_par** %5, align 8
  %20 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %66

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.sstfb_par*, %struct.sstfb_par** %5, align 8
  %28 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %30 = load i32, i32* @PCI_INIT_ENABLE, align 4
  %31 = call i32 @pci_read_config_dword(%struct.pci_dev* %29, i32 %30, i32* %8)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = load i32, i32* @PCI_INIT_ENABLE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PCI_EN_INIT_WR, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @pci_write_config_dword(%struct.pci_dev* %32, i32 %33, i32 %36)
  %38 = load i32, i32* @FBIINIT0, align 4
  %39 = call i32 @sst_read(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.sstfb_par*, %struct.sstfb_par** %5, align 8
  %41 = getelementptr inbounds %struct.sstfb_par, %struct.sstfb_par* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %25
  %45 = load i32, i32* @FBIINIT0, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @DIS_VGA_PASSTHROUGH, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @sst_write(i32 %45, i32 %49)
  %51 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %52 = call i32 @fb_info(%struct.fb_info* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %61

53:                                               ; preds = %25
  %54 = load i32, i32* @FBIINIT0, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DIS_VGA_PASSTHROUGH, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @sst_write(i32 %54, i32 %57)
  %59 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %60 = call i32 @fb_info(%struct.fb_info* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %53, %44
  %62 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %63 = load i32, i32* @PCI_INIT_ENABLE, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @pci_write_config_dword(%struct.pci_dev* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %24
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @sst_read(i32) #1

declare dso_local i32 @sst_write(i32, i32) #1

declare dso_local i32 @fb_info(%struct.fb_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
