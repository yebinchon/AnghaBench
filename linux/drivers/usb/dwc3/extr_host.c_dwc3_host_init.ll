; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_host.c_dwc3_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_host.c_dwc3_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i32, i64, i64, %struct.TYPE_4__*, %struct.platform_device* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.property_entry = type { i8* }
%struct.resource = type { i32, i32 }

@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dwc_usb3\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"xhci-hcd\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"couldn't allocate xHCI device\0A\00", align 1
@DWC3_XHCI_RESOURCES_NUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"couldn't add resources to xHCI device\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"usb3-lpm-capable\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"usb2-lpm-disable\00", align 1
@DWC3_REVISION_300A = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"quirk-broken-port-ped\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to add properties to xHCI\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to register xHCI device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc3_host_init(%struct.dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca [4 x %struct.property_entry], align 16
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  %11 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.platform_device* @to_platform_device(i32 %13)
  store %struct.platform_device* %14, %struct.platform_device** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %16 = call i32 @dwc3_host_get_irq(%struct.dwc3* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %178

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %23 = load i32, i32* @IORESOURCE_IRQ, align 4
  %24 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %22, i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %24, %struct.resource** %8, align 8
  %25 = load %struct.resource*, %struct.resource** %8, align 8
  %26 = icmp ne %struct.resource* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %29 = load i32, i32* @IORESOURCE_IRQ, align 4
  %30 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %28, i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %30, %struct.resource** %8, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.resource*, %struct.resource** %8, align 8
  %33 = icmp ne %struct.resource* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %36 = load i32, i32* @IORESOURCE_IRQ, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %8, align 8
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = icmp ne %struct.resource* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %178

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %47 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %53 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %52, i32 0, i32 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 4
  %57 = load %struct.resource*, %struct.resource** %8, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %61 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %60, i32 0, i32 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  store i32 %59, i32* %64, align 4
  %65 = load %struct.resource*, %struct.resource** %8, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %69 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 %67, i32* %72, align 4
  %73 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %74 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  store %struct.platform_device* %74, %struct.platform_device** %5, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %76 = icmp ne %struct.platform_device* %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %44
  %78 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %79 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %178

84:                                               ; preds = %44
  %85 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %86 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %92 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %93 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %92, i32 0, i32 5
  store %struct.platform_device* %91, %struct.platform_device** %93, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %95 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %96 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %95, i32 0, i32 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* @DWC3_XHCI_RESOURCES_NUM, align 4
  %99 = call i32 @platform_device_add_resources(%struct.platform_device* %94, %struct.TYPE_4__* %97, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %84
  %103 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %104 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %174

107:                                              ; preds = %84
  %108 = getelementptr inbounds [4 x %struct.property_entry], [4 x %struct.property_entry]* %4, i64 0, i64 0
  %109 = getelementptr inbounds [4 x %struct.property_entry], [4 x %struct.property_entry]* %4, i64 0, i64 0
  %110 = call i32 @ARRAY_SIZE(%struct.property_entry* %109)
  %111 = sext i32 %110 to i64
  %112 = mul i64 8, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memset(%struct.property_entry* %108, i32 0, i32 %113)
  %115 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %116 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %107
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [4 x %struct.property_entry], [4 x %struct.property_entry]* %4, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %123, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %124, align 8
  br label %125

125:                                              ; preds = %119, %107
  %126 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %127 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds [4 x %struct.property_entry], [4 x %struct.property_entry]* %4, i64 0, i64 %133
  %135 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %134, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %135, align 8
  br label %136

136:                                              ; preds = %130, %125
  %137 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %138 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DWC3_REVISION_300A, align 8
  %141 = icmp sle i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds [4 x %struct.property_entry], [4 x %struct.property_entry]* %4, i64 0, i64 %145
  %147 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %146, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8** %147, align 8
  br label %148

148:                                              ; preds = %142, %136
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %148
  %152 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %153 = getelementptr inbounds [4 x %struct.property_entry], [4 x %struct.property_entry]* %4, i64 0, i64 0
  %154 = call i32 @platform_device_add_properties(%struct.platform_device* %152, %struct.property_entry* %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %159 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @dev_err(i32 %160, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %174

162:                                              ; preds = %151
  br label %163

163:                                              ; preds = %162, %148
  %164 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %165 = call i32 @platform_device_add(%struct.platform_device* %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %170 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @dev_err(i32 %171, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %174

173:                                              ; preds = %163
  store i32 0, i32* %2, align 4
  br label %178

174:                                              ; preds = %168, %157, %102
  %175 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %176 = call i32 @platform_device_put(%struct.platform_device* %175)
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %174, %173, %77, %41, %19
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @dwc3_host_get_irq(%struct.dwc3*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @memset(%struct.property_entry*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.property_entry*) #1

declare dso_local i32 @platform_device_add_properties(%struct.platform_device*, %struct.property_entry*) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
