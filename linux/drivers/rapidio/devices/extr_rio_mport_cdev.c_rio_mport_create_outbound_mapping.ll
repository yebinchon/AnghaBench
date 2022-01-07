; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_rio_mport_cdev.c_rio_mport_create_outbound_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_rio_mport_cdev.c_rio_mport_create_outbound_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mport_dev = type { i32, %struct.rio_mport* }
%struct.rio_mport = type { i32 }
%struct.file = type { i32 }
%struct.rio_mport_mapping = type { i32, i32, %struct.mport_dev*, %struct.file*, i32, i32, i32, i32, i32 }

@OBW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"did=%d ra=0x%llx sz=0x%x\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAP_OUTBOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mport_dev*, %struct.file*, i32, i32, i32, i32*)* @rio_mport_create_outbound_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_mport_create_outbound_mapping(%struct.mport_dev* %0, %struct.file* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mport_dev*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.rio_mport*, align 8
  %15 = alloca %struct.rio_mport_mapping*, align 8
  %16 = alloca i32, align 4
  store %struct.mport_dev* %0, %struct.mport_dev** %8, align 8
  store %struct.file* %1, %struct.file** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load %struct.mport_dev*, %struct.mport_dev** %8, align 8
  %18 = getelementptr inbounds %struct.mport_dev, %struct.mport_dev* %17, i32 0, i32 1
  %19 = load %struct.rio_mport*, %struct.rio_mport** %18, align 8
  store %struct.rio_mport* %19, %struct.rio_mport** %14, align 8
  %20 = load i32, i32* @OBW, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @rmcd_debug(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.rio_mport_mapping* @kzalloc(i32 48, i32 %25)
  store %struct.rio_mport_mapping* %26, %struct.rio_mport_mapping** %15, align 8
  %27 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %15, align 8
  %28 = icmp eq %struct.rio_mport_mapping* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %77

32:                                               ; preds = %6
  %33 = load %struct.rio_mport*, %struct.rio_mport** %14, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @rio_map_outb_region(%struct.rio_mport* %33, i32 %34, i32 %35, i32 %36, i32 0, i32* %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %73

42:                                               ; preds = %32
  %43 = load i32, i32* @MAP_OUTBOUND, align 4
  %44 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %15, align 8
  %45 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %15, align 8
  %48 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %15, align 8
  %51 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %15, align 8
  %54 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %15, align 8
  %58 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.file*, %struct.file** %9, align 8
  %60 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %15, align 8
  %61 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %60, i32 0, i32 3
  store %struct.file* %59, %struct.file** %61, align 8
  %62 = load %struct.mport_dev*, %struct.mport_dev** %8, align 8
  %63 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %15, align 8
  %64 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %63, i32 0, i32 2
  store %struct.mport_dev* %62, %struct.mport_dev** %64, align 8
  %65 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %15, align 8
  %66 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %65, i32 0, i32 1
  %67 = call i32 @kref_init(i32* %66)
  %68 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %15, align 8
  %69 = getelementptr inbounds %struct.rio_mport_mapping, %struct.rio_mport_mapping* %68, i32 0, i32 0
  %70 = load %struct.mport_dev*, %struct.mport_dev** %8, align 8
  %71 = getelementptr inbounds %struct.mport_dev, %struct.mport_dev* %70, i32 0, i32 0
  %72 = call i32 @list_add_tail(i32* %69, i32* %71)
  store i32 0, i32* %7, align 4
  br label %77

73:                                               ; preds = %41
  %74 = load %struct.rio_mport_mapping*, %struct.rio_mport_mapping** %15, align 8
  %75 = call i32 @kfree(%struct.rio_mport_mapping* %74)
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %42, %29
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @rmcd_debug(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.rio_mport_mapping* @kzalloc(i32, i32) #1

declare dso_local i32 @rio_map_outb_region(%struct.rio_mport*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.rio_mport_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
