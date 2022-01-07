; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_boot.c_wl1251_boot_upload_nvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_boot.c_wl1251_boot_upload_nvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64*, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"nvs burst write 0x%x: 0x%x\00", align 1
@WL1251_PART_DOWN_MEM_SIZE = common dso_local global i32 0, align 4
@WL1251_PART_DOWN_REG_START = common dso_local global i32 0, align 4
@WL1251_PART_DOWN_REG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"nvs write table 0x%x: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*)* @wl1251_boot_upload_nvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_boot_upload_nvs(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %13 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %14 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %12, align 8
  %16 = load i64*, i64** %12, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %148

21:                                               ; preds = %1
  %22 = load i64*, i64** %12, align 8
  store i64* %22, i64** %11, align 8
  %23 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %24 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %4, align 8
  %26 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %27 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %90, %21
  %30 = load i64*, i64** %11, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %91

34:                                               ; preds = %29
  %35 = load i64*, i64** %11, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  %38 = load i64*, i64** %11, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %40, 254
  %42 = load i64*, i64** %11, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  %44 = load i64, i64* %43, align 8
  %45 = shl i64 %44, 8
  %46 = or i64 %41, %45
  store i64 %46, i64* %9, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 3
  store i64* %48, i64** %11, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %87, %34
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %6, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %49
  %55 = load i64*, i64** %11, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %11, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = shl i64 %60, 8
  %62 = or i64 %57, %61
  %63 = load i64*, i64** %11, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  %66 = shl i64 %65, 16
  %67 = or i64 %62, %66
  %68 = load i64*, i64** %11, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 3
  %70 = load i64, i64* %69, align 8
  %71 = shl i64 %70, 24
  %72 = or i64 %67, %71
  store i64 %72, i64* %10, align 8
  %73 = load i32, i32* @DEBUG_BOOT, align 4
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @wl1251_debug(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %75, i64 %76)
  %78 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %79 = load i64, i64* %9, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @wl1251_mem_write32(%struct.wl1251* %78, i32 %80, i64 %81)
  %83 = load i64*, i64** %11, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 4
  store i64* %84, i64** %11, align 8
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 4
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %54
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %49

90:                                               ; preds = %49
  br label %29

91:                                               ; preds = %29
  %92 = load i64*, i64** %11, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 7
  store i64* %93, i64** %11, align 8
  %94 = load i64*, i64** %11, align 8
  %95 = load i64*, i64** %12, align 8
  %96 = ptrtoint i64* %94 to i64
  %97 = ptrtoint i64* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 8
  %100 = load i64, i64* %4, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %4, align 8
  %102 = load i64, i64* %4, align 8
  %103 = call i64 @ALIGN(i64 %102, i32 4)
  store i64 %103, i64* %4, align 8
  %104 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @WL1251_PART_DOWN_MEM_SIZE, align 4
  %107 = load i32, i32* @WL1251_PART_DOWN_REG_START, align 4
  %108 = load i32, i32* @WL1251_PART_DOWN_REG_SIZE, align 4
  %109 = call i32 @wl1251_set_partition(%struct.wl1251* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  store i64 0, i64* %5, align 8
  br label %110

110:                                              ; preds = %114, %91
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* %4, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %147

114:                                              ; preds = %110
  %115 = load i64*, i64** %11, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %11, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = load i64, i64* %119, align 8
  %121 = shl i64 %120, 8
  %122 = or i64 %117, %121
  %123 = load i64*, i64** %11, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 2
  %125 = load i64, i64* %124, align 8
  %126 = shl i64 %125, 16
  %127 = or i64 %122, %126
  %128 = load i64*, i64** %11, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 3
  %130 = load i64, i64* %129, align 8
  %131 = shl i64 %130, 24
  %132 = or i64 %127, %131
  store i64 %132, i64* %10, align 8
  %133 = load i32, i32* @DEBUG_BOOT, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i64, i64* %10, align 8
  %136 = call i32 @wl1251_debug(i32 %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %134, i64 %135)
  %137 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @wl1251_mem_write32(%struct.wl1251* %137, i32 %138, i64 %139)
  %141 = load i64*, i64** %11, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 4
  store i64* %142, i64** %11, align 8
  %143 = load i64, i64* %5, align 8
  %144 = add i64 %143, 4
  store i64 %144, i64* %5, align 8
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 4
  store i32 %146, i32* %7, align 4
  br label %110

147:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %18
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @wl1251_debug(i32, i8*, i32, i64) #1

declare dso_local i32 @wl1251_mem_write32(%struct.wl1251*, i32, i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @wl1251_set_partition(%struct.wl1251*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
