; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_read_toc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_read_toc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32*, %struct.fsg_lun* }
%struct.fsg_lun = type { i32, i32 }
%struct.fsg_buffhd = type { i64 }

@SS_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*, %struct.fsg_buffhd*)* @do_read_toc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read_toc(%struct.fsg_common* %0, %struct.fsg_buffhd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_common*, align 8
  %5 = alloca %struct.fsg_buffhd*, align 8
  %6 = alloca %struct.fsg_lun*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.fsg_common* %0, %struct.fsg_common** %4, align 8
  store %struct.fsg_buffhd* %1, %struct.fsg_buffhd** %5, align 8
  %10 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %11 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %10, i32 0, i32 1
  %12 = load %struct.fsg_lun*, %struct.fsg_lun** %11, align 8
  store %struct.fsg_lun* %12, %struct.fsg_lun** %6, align 8
  %13 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %14 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 2
  store i32 %18, i32* %7, align 4
  %19 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %20 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 6
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %25 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %9, align 8
  %28 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %29 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -3
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %35, %2
  %39 = load i32, i32* @SS_INVALID_FIELD_IN_CDB, align 4
  %40 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %41 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %72

44:                                               ; preds = %35
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @memset(i32* %45, i32 0, i32 20)
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 18, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 1, i32* %50, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 1, i32* %52, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  store i32 22, i32* %54, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  store i32 1, i32* %56, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @store_cdrom_address(i32* %58, i32 %59, i32 0)
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 13
  store i32 22, i32* %62, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 14
  store i32 170, i32* %64, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 16
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %69 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @store_cdrom_address(i32* %66, i32 %67, i32 %70)
  store i32 20, i32* %3, align 4
  br label %72

72:                                               ; preds = %44, %38
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @store_cdrom_address(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
