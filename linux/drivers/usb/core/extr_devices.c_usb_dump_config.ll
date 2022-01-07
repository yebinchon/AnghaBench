; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devices.c_usb_dump_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devices.c_usb_dump_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_config = type { %struct.usb_interface**, %struct.usb_interface_cache**, %struct.TYPE_2__, i32** }
%struct.usb_interface = type { i32 }
%struct.usb_interface_cache = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"(null Cfg. desc.)\0A\00", align 1
@USB_MAXIADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i8*, %struct.usb_host_config*, i32)* @usb_dump_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usb_dump_config(i32 %0, i8* %1, i8* %2, %struct.usb_host_config* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.usb_host_config*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_interface_cache*, align 8
  %15 = alloca %struct.usb_interface*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.usb_host_config* %3, %struct.usb_host_config** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ugt i8* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %6, align 8
  br label %118

21:                                               ; preds = %5
  %22 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %23 = icmp ne %struct.usb_host_config* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8* %29, i8** %6, align 8
  br label %118

30:                                               ; preds = %21
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %34 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %33, i32 0, i32 2
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @usb_dump_config_descriptor(i8* %31, i8* %32, %struct.TYPE_2__* %34, i32 %35, i32 %36)
  store i8* %37, i8** %8, align 8
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %63, %30
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @USB_MAXIADS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %44 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %43, i32 0, i32 3
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %66

52:                                               ; preds = %42
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %56 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %55, i32 0, i32 3
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i8* @usb_dump_iad_descriptor(i8* %53, i8* %54, i32* %61)
  store i8* %62, i8** %8, align 8
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %38

66:                                               ; preds = %51, %38
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %113, %66
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %70 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %116

74:                                               ; preds = %67
  %75 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %76 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %75, i32 0, i32 1
  %77 = load %struct.usb_interface_cache**, %struct.usb_interface_cache*** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.usb_interface_cache*, %struct.usb_interface_cache** %77, i64 %79
  %81 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %80, align 8
  store %struct.usb_interface_cache* %81, %struct.usb_interface_cache** %14, align 8
  %82 = load %struct.usb_host_config*, %struct.usb_host_config** %10, align 8
  %83 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %82, i32 0, i32 0
  %84 = load %struct.usb_interface**, %struct.usb_interface*** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %84, i64 %86
  %88 = load %struct.usb_interface*, %struct.usb_interface** %87, align 8
  store %struct.usb_interface* %88, %struct.usb_interface** %15, align 8
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %109, %74
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %14, align 8
  %92 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = icmp ugt i8* %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i8*, i8** %8, align 8
  store i8* %100, i8** %6, align 8
  br label %118

101:                                              ; preds = %95
  %102 = load i32, i32* %7, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %14, align 8
  %106 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i8* @usb_dump_interface(i32 %102, i8* %103, i8* %104, %struct.usb_interface_cache* %105, %struct.usb_interface* %106, i32 %107)
  store i8* %108, i8** %8, align 8
  br label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %89

112:                                              ; preds = %89
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %67

116:                                              ; preds = %67
  %117 = load i8*, i8** %8, align 8
  store i8* %117, i8** %6, align 8
  br label %118

118:                                              ; preds = %116, %99, %24, %19
  %119 = load i8*, i8** %6, align 8
  ret i8* %119
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i8* @usb_dump_config_descriptor(i8*, i8*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i8* @usb_dump_iad_descriptor(i8*, i8*, i32*) #1

declare dso_local i8* @usb_dump_interface(i32, i8*, i8*, %struct.usb_interface_cache*, %struct.usb_interface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
