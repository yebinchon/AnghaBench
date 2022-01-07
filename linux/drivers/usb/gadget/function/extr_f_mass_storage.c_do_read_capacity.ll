; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_read_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_read_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32*, %struct.fsg_lun* }
%struct.fsg_lun = type { i64, i64, i32 }
%struct.fsg_buffhd = type { i64 }

@SS_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*, %struct.fsg_buffhd*)* @do_read_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read_capacity(%struct.fsg_common* %0, %struct.fsg_buffhd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_common*, align 8
  %5 = alloca %struct.fsg_buffhd*, align 8
  %6 = alloca %struct.fsg_lun*, align 8
  %7 = alloca i64, align 8
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
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = call i64 @get_unaligned_be32(i32* %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %19 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %24 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %9, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32, %2
  %36 = load i32, i32* @SS_INVALID_FIELD_IN_CDB, align 4
  %37 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %38 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %55

41:                                               ; preds = %32, %29
  %42 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %43 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 1
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call i32 @put_unaligned_be32(i64 %45, i32* %47)
  %49 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %50 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = call i32 @put_unaligned_be32(i64 %51, i32* %53)
  store i32 8, i32* %3, align 4
  br label %55

55:                                               ; preds = %41, %35
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i32 @put_unaligned_be32(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
