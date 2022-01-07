; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_initialise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u132 = type { i32, i32**, %struct.u132_udev*, %struct.u132_addr*, %struct.u132_port*, i32, %struct.u132_ring*, i32, i64, i64, %struct.platform_device*, i32 }
%struct.u132_udev = type { i64*, i64*, i64, i64, i64, i32* }
%struct.u132_addr = type { i64 }
%struct.u132_port = type { i64, i64, i64, i64, %struct.u132* }
%struct.u132_ring = type { i32, i32, i32*, i64, %struct.u132* }
%struct.platform_device = type { i32 }

@MAX_U132_RINGS = common dso_local global i32 0, align 4
@MAX_U132_PORTS = common dso_local global i32 0, align 4
@MAX_U132_ADDRS = common dso_local global i32 0, align 4
@MAX_U132_UDEVS = common dso_local global i32 0, align 4
@MAX_U132_ENDPS = common dso_local global i32 0, align 4
@u132_hcd_ring_work_scheduler = common dso_local global i32 0, align 4
@u132_hcd_monitor_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.u132*, %struct.platform_device*)* @u132_initialise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_initialise(%struct.u132* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.u132*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.u132_ring*, align 8
  %11 = alloca %struct.u132_port*, align 8
  %12 = alloca %struct.u132_addr*, align 8
  %13 = alloca %struct.u132_udev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.u132* %0, %struct.u132** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %16 = load i32, i32* @MAX_U132_RINGS, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @MAX_U132_PORTS, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @MAX_U132_ADDRS, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @MAX_U132_UDEVS, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @MAX_U132_ENDPS, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @dev_get_platdata(i32* %22)
  %24 = load %struct.u132*, %struct.u132** %3, align 8
  %25 = getelementptr inbounds %struct.u132, %struct.u132* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = load %struct.u132*, %struct.u132** %3, align 8
  %28 = getelementptr inbounds %struct.u132, %struct.u132* %27, i32 0, i32 10
  store %struct.platform_device* %26, %struct.platform_device** %28, align 8
  %29 = load %struct.u132*, %struct.u132** %3, align 8
  %30 = getelementptr inbounds %struct.u132, %struct.u132* %29, i32 0, i32 9
  store i64 0, i64* %30, align 8
  %31 = load %struct.u132*, %struct.u132** %3, align 8
  %32 = getelementptr inbounds %struct.u132, %struct.u132* %31, i32 0, i32 8
  store i64 0, i64* %32, align 8
  %33 = load %struct.u132*, %struct.u132** %3, align 8
  %34 = getelementptr inbounds %struct.u132, %struct.u132* %33, i32 0, i32 0
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.u132*, %struct.u132** %3, align 8
  %37 = getelementptr inbounds %struct.u132, %struct.u132* %36, i32 0, i32 7
  %38 = call i32 @mutex_init(i32* %37)
  br label %39

39:                                               ; preds = %43, %2
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  %42 = icmp sgt i32 %40, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load %struct.u132*, %struct.u132** %3, align 8
  %45 = getelementptr inbounds %struct.u132, %struct.u132* %44, i32 0, i32 6
  %46 = load %struct.u132_ring*, %struct.u132_ring** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %46, i64 %48
  store %struct.u132_ring* %49, %struct.u132_ring** %10, align 8
  %50 = load %struct.u132*, %struct.u132** %3, align 8
  %51 = load %struct.u132_ring*, %struct.u132_ring** %10, align 8
  %52 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %51, i32 0, i32 4
  store %struct.u132* %50, %struct.u132** %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  %55 = load %struct.u132_ring*, %struct.u132_ring** %10, align 8
  %56 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.u132_ring*, %struct.u132_ring** %10, align 8
  %58 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.u132_ring*, %struct.u132_ring** %10, align 8
  %60 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  %61 = load %struct.u132_ring*, %struct.u132_ring** %10, align 8
  %62 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %61, i32 0, i32 1
  %63 = load i32, i32* @u132_hcd_ring_work_scheduler, align 4
  %64 = call i32 @INIT_DELAYED_WORK(i32* %62, i32 %63)
  br label %39

65:                                               ; preds = %39
  %66 = load %struct.u132*, %struct.u132** %3, align 8
  %67 = getelementptr inbounds %struct.u132, %struct.u132* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.u132*, %struct.u132** %3, align 8
  %70 = getelementptr inbounds %struct.u132, %struct.u132* %69, i32 0, i32 5
  %71 = load i32, i32* @u132_hcd_monitor_work, align 4
  %72 = call i32 @INIT_DELAYED_WORK(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %77, %65
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %6, align 4
  %76 = icmp sgt i32 %74, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %73
  %78 = load %struct.u132*, %struct.u132** %3, align 8
  %79 = getelementptr inbounds %struct.u132, %struct.u132* %78, i32 0, i32 4
  %80 = load %struct.u132_port*, %struct.u132_port** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %80, i64 %82
  store %struct.u132_port* %83, %struct.u132_port** %11, align 8
  %84 = load %struct.u132*, %struct.u132** %3, align 8
  %85 = load %struct.u132_port*, %struct.u132_port** %11, align 8
  %86 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %85, i32 0, i32 4
  store %struct.u132* %84, %struct.u132** %86, align 8
  %87 = load %struct.u132_port*, %struct.u132_port** %11, align 8
  %88 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.u132_port*, %struct.u132_port** %11, align 8
  %90 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.u132_port*, %struct.u132_port** %11, align 8
  %92 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.u132_port*, %struct.u132_port** %11, align 8
  %94 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  br label %73

95:                                               ; preds = %73
  br label %96

96:                                               ; preds = %100, %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %7, align 4
  %99 = icmp sgt i32 %97, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load %struct.u132*, %struct.u132** %3, align 8
  %102 = getelementptr inbounds %struct.u132, %struct.u132* %101, i32 0, i32 3
  %103 = load %struct.u132_addr*, %struct.u132_addr** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.u132_addr, %struct.u132_addr* %103, i64 %105
  store %struct.u132_addr* %106, %struct.u132_addr** %12, align 8
  %107 = load %struct.u132_addr*, %struct.u132_addr** %12, align 8
  %108 = getelementptr inbounds %struct.u132_addr, %struct.u132_addr* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %96

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %160, %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %8, align 4
  %113 = icmp sgt i32 %111, 0
  br i1 %113, label %114, label %161

114:                                              ; preds = %110
  %115 = load %struct.u132*, %struct.u132** %3, align 8
  %116 = getelementptr inbounds %struct.u132, %struct.u132* %115, i32 0, i32 2
  %117 = load %struct.u132_udev*, %struct.u132_udev** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %117, i64 %119
  store %struct.u132_udev* %120, %struct.u132_udev** %13, align 8
  %121 = load %struct.u132_udev*, %struct.u132_udev** %13, align 8
  %122 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = call i32 @ARRAY_SIZE(i64* %123)
  store i32 %124, i32* %14, align 4
  %125 = load %struct.u132_udev*, %struct.u132_udev** %13, align 8
  %126 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = call i32 @ARRAY_SIZE(i64* %127)
  store i32 %128, i32* %15, align 4
  %129 = load %struct.u132_udev*, %struct.u132_udev** %13, align 8
  %130 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %129, i32 0, i32 5
  store i32* null, i32** %130, align 8
  %131 = load %struct.u132_udev*, %struct.u132_udev** %13, align 8
  %132 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %131, i32 0, i32 4
  store i64 0, i64* %132, align 8
  %133 = load %struct.u132_udev*, %struct.u132_udev** %13, align 8
  %134 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %133, i32 0, i32 3
  store i64 0, i64* %134, align 8
  %135 = load %struct.u132_udev*, %struct.u132_udev** %13, align 8
  %136 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %135, i32 0, i32 2
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %141, %114
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %14, align 4
  %140 = icmp sgt i32 %138, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load %struct.u132_udev*, %struct.u132_udev** %13, align 8
  %143 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  store i64 0, i64* %147, align 8
  br label %137

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %153, %148
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %15, align 4
  %152 = icmp sgt i32 %150, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load %struct.u132_udev*, %struct.u132_udev** %13, align 8
  %155 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  store i64 0, i64* %159, align 8
  br label %149

160:                                              ; preds = %149
  br label %110

161:                                              ; preds = %110
  br label %162

162:                                              ; preds = %166, %161
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %9, align 4
  %165 = icmp sgt i32 %163, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load %struct.u132*, %struct.u132** %3, align 8
  %168 = getelementptr inbounds %struct.u132, %struct.u132* %167, i32 0, i32 1
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  store i32* null, i32** %172, align 8
  br label %162

173:                                              ; preds = %162
  %174 = load %struct.u132*, %struct.u132** %3, align 8
  %175 = getelementptr inbounds %struct.u132, %struct.u132* %174, i32 0, i32 0
  %176 = call i32 @mutex_unlock(i32* %175)
  ret void
}

declare dso_local i32 @dev_get_platdata(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
