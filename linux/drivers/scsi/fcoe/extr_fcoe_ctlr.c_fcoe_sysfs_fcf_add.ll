; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_sysfs_fcf_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_sysfs_fcf_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_fcf = type { i32, %struct.fcoe_fcf_device*, i32, i32, i32, i32, i32, i32, i32, %struct.fcoe_ctlr* }
%struct.fcoe_fcf_device = type { %struct.fcoe_fcf*, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.fcoe_ctlr = type { i32, i32 }
%struct.fcoe_ctlr_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"New FCF fab %16.16llx mac %pM\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcoe_fcf*)* @fcoe_sysfs_fcf_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_sysfs_fcf_add(%struct.fcoe_fcf* %0) #0 {
  %2 = alloca %struct.fcoe_fcf*, align 8
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fcoe_ctlr_device*, align 8
  %5 = alloca %struct.fcoe_fcf_device*, align 8
  %6 = alloca %struct.fcoe_fcf_device*, align 8
  %7 = alloca i32, align 4
  store %struct.fcoe_fcf* %0, %struct.fcoe_fcf** %2, align 8
  %8 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %9 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %8, i32 0, i32 9
  %10 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %9, align 8
  store %struct.fcoe_ctlr* %10, %struct.fcoe_ctlr** %3, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %14 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %15 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %18 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.fcoe_fcf_device* @kzalloc(i32 48, i32 %21)
  store %struct.fcoe_fcf_device* %22, %struct.fcoe_fcf_device** %5, align 8
  %23 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %24 = icmp ne %struct.fcoe_fcf_device* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %114

26:                                               ; preds = %1
  %27 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %28 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %31 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %33 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %36 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %38 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %41 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %43 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %46 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %48 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %51 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = call i32 @memcpy(i32 %49, i32 %52, i32 %53)
  %55 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %56 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %59 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %61 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %64 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %66 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %68 = call %struct.fcoe_ctlr_device* @fcoe_ctlr_to_ctlr_dev(%struct.fcoe_ctlr* %67)
  store %struct.fcoe_ctlr_device* %68, %struct.fcoe_ctlr_device** %4, align 8
  %69 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %4, align 8
  %70 = icmp ne %struct.fcoe_ctlr_device* %69, null
  br i1 %70, label %71, label %104

71:                                               ; preds = %26
  %72 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %4, align 8
  %73 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %72, i32 0, i32 0
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %4, align 8
  %76 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %77 = call %struct.fcoe_fcf_device* @fcoe_fcf_device_add(%struct.fcoe_ctlr_device* %75, %struct.fcoe_fcf_device* %76)
  store %struct.fcoe_fcf_device* %77, %struct.fcoe_fcf_device** %6, align 8
  %78 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %6, align 8
  %79 = icmp ne %struct.fcoe_fcf_device* %78, null
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  %87 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %4, align 8
  %88 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  br label %114

90:                                               ; preds = %71
  %91 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %6, align 8
  %92 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %91, i32 0, i32 0
  %93 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %92, align 8
  %94 = call i32 @BUG_ON(%struct.fcoe_fcf* %93)
  %95 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %96 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %6, align 8
  %97 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %96, i32 0, i32 0
  store %struct.fcoe_fcf* %95, %struct.fcoe_fcf** %97, align 8
  %98 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %6, align 8
  %99 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %100 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %99, i32 0, i32 1
  store %struct.fcoe_fcf_device* %98, %struct.fcoe_fcf_device** %100, align 8
  %101 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %4, align 8
  %102 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  br label %104

104:                                              ; preds = %90, %26
  %105 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %2, align 8
  %106 = getelementptr inbounds %struct.fcoe_fcf, %struct.fcoe_fcf* %105, i32 0, i32 0
  %107 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %108 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %107, i32 0, i32 1
  %109 = call i32 @list_add(i32* %106, i32* %108)
  %110 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %111 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %104, %84, %25
  %115 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %5, align 8
  %116 = call i32 @kfree(%struct.fcoe_fcf_device* %115)
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, i32, i32) #1

declare dso_local %struct.fcoe_fcf_device* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.fcoe_ctlr_device* @fcoe_ctlr_to_ctlr_dev(%struct.fcoe_ctlr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fcoe_fcf_device* @fcoe_fcf_device_add(%struct.fcoe_ctlr_device*, %struct.fcoe_fcf_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BUG_ON(%struct.fcoe_fcf*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.fcoe_fcf_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
