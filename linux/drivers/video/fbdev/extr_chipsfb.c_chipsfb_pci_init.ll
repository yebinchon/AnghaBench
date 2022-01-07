; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_chipsfb.c_chipsfb_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_chipsfb.c_chipsfb_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.pci_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.fb_info = type { i32*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot enable PCI device\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"chipsfb\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot request framebuffer\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot map framebuffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"C&T 65550 framebuffer failed to register\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"fb%d: Chips 65550 frame buffer (%dK RAM detected)\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@pmac_backlight = common dso_local global %struct.TYPE_9__* null, align 8
@pmac_backlight_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @chipsfb_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipsfb_pci_init(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i64 @pci_enable_device(%struct.pci_dev* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %119

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %118

30:                                               ; preds = %19
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i64 @pci_resource_start(%struct.pci_dev* %31, i32 0)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %118

36:                                               ; preds = %30
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call %struct.fb_info* @framebuffer_alloc(i32 0, i32* %38)
  store %struct.fb_info* %39, %struct.fb_info** %6, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %41 = icmp eq %struct.fb_info* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %118

45:                                               ; preds = %36
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call i64 @pci_request_region(%struct.pci_dev* %46, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %115

55:                                               ; preds = %45
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load i32, i32* @PCI_COMMAND, align 4
  %58 = call i32 @pci_read_config_word(%struct.pci_dev* %56, i32 %57, i16* %8)
  %59 = load i16, i16* %8, align 2
  %60 = zext i16 %59 to i32
  %61 = or i32 %60, 3
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %8, align 2
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = load i32, i32* @PCI_COMMAND, align 4
  %65 = load i16, i16* %8, align 2
  %66 = call i32 @pci_write_config_word(%struct.pci_dev* %63, i32 %64, i16 zeroext %65)
  %67 = load i64, i64* %7, align 8
  %68 = call i32* @ioremap(i64 %67, i32 2097152)
  %69 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %55
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %112

81:                                               ; preds = %55
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %84 = call i32 @pci_set_drvdata(%struct.pci_dev* %82, %struct.fb_info* %83)
  %85 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @init_chips(%struct.fb_info* %85, i64 %86)
  %88 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %89 = call i64 @register_framebuffer(%struct.fb_info* %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %107

95:                                               ; preds = %81
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %102 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sdiv i32 %104, 1024
  %106 = call i32 @dev_info(i32* %97, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %100, i32 %105)
  store i32 0, i32* %3, align 4
  br label %121

107:                                              ; preds = %91
  %108 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @iounmap(i32* %110)
  br label %112

112:                                              ; preds = %107, %75
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = call i32 @pci_release_region(%struct.pci_dev* %113, i32 0)
  br label %115

115:                                              ; preds = %112, %49
  %116 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %117 = call i32 @framebuffer_release(%struct.fb_info* %116)
  br label %118

118:                                              ; preds = %115, %42, %35, %29
  br label %119

119:                                              ; preds = %118, %15
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %95
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local i64 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.fb_info*) #1

declare dso_local i32 @init_chips(%struct.fb_info*, i64) #1

declare dso_local i64 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
