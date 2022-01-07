; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_verify_uri_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_verify_uri_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.file_control_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FLG_SYSTEM_HOLD = common dso_local global i32 0, align 4
@FLG_USER_HOLD = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@FLG_IN_USE = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urdev*)* @verify_uri_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_uri_device(%struct.urdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urdev*, align 8
  %4 = alloca %struct.file_control_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.urdev* %0, %struct.urdev** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = load i32, i32* @GFP_DMA, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.file_control_block* @kmalloc(i32 4, i32 %9)
  store %struct.file_control_block* %10, %struct.file_control_block** %4, align 8
  %11 = load %struct.file_control_block*, %struct.file_control_block** %4, align 8
  %12 = icmp ne %struct.file_control_block* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %85

16:                                               ; preds = %1
  %17 = load %struct.file_control_block*, %struct.file_control_block** %4, align 8
  %18 = call i32 @diag_read_next_file_info(%struct.file_control_block* %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %81

22:                                               ; preds = %16
  %23 = load %struct.file_control_block*, %struct.file_control_block** %4, align 8
  %24 = getelementptr inbounds %struct.file_control_block, %struct.file_control_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FLG_SYSTEM_HOLD, align 4
  %27 = load i32, i32* @FLG_USER_HOLD, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %81

34:                                               ; preds = %22
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load i32, i32* @GFP_DMA, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @__get_free_page(i32 %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %81

45:                                               ; preds = %34
  %46 = load %struct.urdev*, %struct.urdev** %3, align 8
  %47 = getelementptr inbounds %struct.urdev, %struct.urdev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @diag_read_file(i32 %49, i8* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ENODATA, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %77

60:                                               ; preds = %54, %45
  %61 = load %struct.file_control_block*, %struct.file_control_block** %4, align 8
  %62 = call i32 @diag_read_next_file_info(%struct.file_control_block* %61, i32 0)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %77

66:                                               ; preds = %60
  %67 = load %struct.file_control_block*, %struct.file_control_block** %4, align 8
  %68 = getelementptr inbounds %struct.file_control_block, %struct.file_control_block* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FLG_IN_USE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @EMFILE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %77

76:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %73, %65, %59
  %78 = load i8*, i8** %5, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = call i32 @free_page(i64 %79)
  br label %81

81:                                               ; preds = %77, %42, %31, %21
  %82 = load %struct.file_control_block*, %struct.file_control_block** %4, align 8
  %83 = call i32 @kfree(%struct.file_control_block* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %13
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.file_control_block* @kmalloc(i32, i32) #1

declare dso_local i32 @diag_read_next_file_info(%struct.file_control_block*, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @diag_read_file(i32, i8*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.file_control_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
