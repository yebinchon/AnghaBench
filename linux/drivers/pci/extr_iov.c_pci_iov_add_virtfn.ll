; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_pci_iov_add_virtfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_pci_iov_add_virtfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_2__, %struct.resource*, i64, i32, i32, i32, i32, %struct.pci_sriov* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.resource = type { i64, i64, i32, i32, i32 }
%struct.pci_sriov = type { i32 }
%struct.pci_bus = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VIRTFN_ID_LEN = common dso_local global i32 0, align 4
@PCI_SRIOV_NUM_BARS = common dso_local global i32 0, align 4
@PCI_IOV_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"virtfn%u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"physfn\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_iov_add_virtfn(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca %struct.pci_sriov*, align 8
  %14 = alloca %struct.pci_bus*, align 8
  %15 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @VIRTFN_ID_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 9
  %24 = load %struct.pci_sriov*, %struct.pci_sriov** %23, align 8
  store %struct.pci_sriov* %24, %struct.pci_sriov** %13, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pci_iov_virtfn_bus(%struct.pci_dev* %28, i32 %29)
  %31 = call %struct.pci_bus* @virtfn_add_bus(i32 %27, i32 %30)
  store %struct.pci_bus* %31, %struct.pci_bus** %14, align 8
  %32 = load %struct.pci_bus*, %struct.pci_bus** %14, align 8
  %33 = icmp ne %struct.pci_bus* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  br label %228

35:                                               ; preds = %2
  %36 = load %struct.pci_bus*, %struct.pci_bus** %14, align 8
  %37 = call %struct.pci_dev* @pci_alloc_dev(%struct.pci_bus* %36)
  store %struct.pci_dev* %37, %struct.pci_dev** %11, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %39 = icmp ne %struct.pci_dev* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %222

41:                                               ; preds = %35
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @pci_iov_virtfn_devfn(%struct.pci_dev* %42, i32 %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pci_sriov*, %struct.pci_sriov** %13, align 8
  %53 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = call i32 @pci_dev_get(%struct.pci_dev* %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %41
  %66 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %67 = call i32 @pci_read_vf_config_common(%struct.pci_dev* %66)
  br label %68

68:                                               ; preds = %65, %41
  %69 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %70 = call i32 @pci_setup_device(%struct.pci_dev* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %219

74:                                               ; preds = %68
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %171, %74
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @PCI_SRIOV_NUM_BARS, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %174

88:                                               ; preds = %84
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 3
  %91 = load %struct.resource*, %struct.resource** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @PCI_IOV_RESOURCES, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %91, i64 %95
  store %struct.resource* %96, %struct.resource** %12, align 8
  %97 = load %struct.resource*, %struct.resource** %12, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %88
  br label %171

102:                                              ; preds = %88
  %103 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %104 = call i32 @pci_name(%struct.pci_dev* %103)
  %105 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 3
  %107 = load %struct.resource*, %struct.resource** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.resource, %struct.resource* %107, i64 %109
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %110, i32 0, i32 3
  store i32 %104, i32* %111, align 4
  %112 = load %struct.resource*, %struct.resource** %12, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 3
  %117 = load %struct.resource*, %struct.resource** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %117, i64 %119
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 2
  store i32 %114, i32* %121, align 8
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @PCI_IOV_RESOURCES, align 4
  %125 = add nsw i32 %123, %124
  %126 = call i32 @pci_iov_resource_size(%struct.pci_dev* %122, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load %struct.resource*, %struct.resource** %12, align 8
  %128 = getelementptr inbounds %struct.resource, %struct.resource* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %5, align 4
  %132 = mul nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %129, %133
  %135 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 3
  %137 = load %struct.resource*, %struct.resource** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.resource, %struct.resource* %137, i64 %139
  %141 = getelementptr inbounds %struct.resource, %struct.resource* %140, i32 0, i32 0
  store i64 %134, i64* %141, align 8
  %142 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %143 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %142, i32 0, i32 3
  %144 = load %struct.resource*, %struct.resource** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.resource, %struct.resource* %144, i64 %146
  %148 = getelementptr inbounds %struct.resource, %struct.resource* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = sub nsw i64 %152, 1
  %154 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %155 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %154, i32 0, i32 3
  %156 = load %struct.resource*, %struct.resource** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.resource, %struct.resource* %156, i64 %158
  %160 = getelementptr inbounds %struct.resource, %struct.resource* %159, i32 0, i32 1
  store i64 %153, i64* %160, align 8
  %161 = load %struct.resource*, %struct.resource** %12, align 8
  %162 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %163 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %162, i32 0, i32 3
  %164 = load %struct.resource*, %struct.resource** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.resource, %struct.resource* %164, i64 %166
  %168 = call i32 @request_resource(%struct.resource* %161, %struct.resource* %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @BUG_ON(i32 %169)
  br label %171

171:                                              ; preds = %102, %101
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %84

174:                                              ; preds = %84
  %175 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %176 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @pci_device_add(%struct.pci_dev* %175, i32 %178)
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %180)
  %182 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %183 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %186 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = call i32 @sysfs_create_link(i32* %184, i32* %187, i8* %21)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %174
  br label %216

192:                                              ; preds = %174
  %193 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %194 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %197 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = call i32 @sysfs_create_link(i32* %195, i32* %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  br label %211

203:                                              ; preds = %192
  %204 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %205 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* @KOBJ_CHANGE, align 4
  %208 = call i32 @kobject_uevent(i32* %206, i32 %207)
  %209 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %210 = call i32 @pci_bus_add_device(%struct.pci_dev* %209)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %230

211:                                              ; preds = %202
  %212 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %213 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = call i32 @sysfs_remove_link(i32* %214, i8* %21)
  br label %216

216:                                              ; preds = %211, %191
  %217 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %218 = call i32 @pci_stop_and_remove_bus_device(%struct.pci_dev* %217)
  br label %219

219:                                              ; preds = %216, %73
  %220 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %221 = call i32 @pci_dev_put(%struct.pci_dev* %220)
  br label %222

222:                                              ; preds = %219, %40
  %223 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %224 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.pci_bus*, %struct.pci_bus** %14, align 8
  %227 = call i32 @virtfn_remove_bus(i32 %225, %struct.pci_bus* %226)
  br label %228

228:                                              ; preds = %222, %34
  %229 = load i32, i32* %7, align 4
  store i32 %229, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %230

230:                                              ; preds = %228, %203
  %231 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.pci_bus* @virtfn_add_bus(i32, i32) #2

declare dso_local i32 @pci_iov_virtfn_bus(%struct.pci_dev*, i32) #2

declare dso_local %struct.pci_dev* @pci_alloc_dev(%struct.pci_bus*) #2

declare dso_local i32 @pci_iov_virtfn_devfn(%struct.pci_dev*, i32) #2

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #2

declare dso_local i32 @pci_read_vf_config_common(%struct.pci_dev*) #2

declare dso_local i32 @pci_setup_device(%struct.pci_dev*) #2

declare dso_local i32 @pci_name(%struct.pci_dev*) #2

declare dso_local i32 @pci_iov_resource_size(%struct.pci_dev*, i32) #2

declare dso_local i32 @request_resource(%struct.resource*, %struct.resource*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @pci_device_add(%struct.pci_dev*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #2

declare dso_local i32 @kobject_uevent(i32*, i32) #2

declare dso_local i32 @pci_bus_add_device(%struct.pci_dev*) #2

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #2

declare dso_local i32 @pci_stop_and_remove_bus_device(%struct.pci_dev*) #2

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #2

declare dso_local i32 @virtfn_remove_bus(i32, %struct.pci_bus*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
