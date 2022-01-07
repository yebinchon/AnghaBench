; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_lid_resume_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_lid_resume_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@LID_RESUME_S5 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@LID_RESUME_MAX = common dso_local global i32 0, align 4
@lid_ctl = common dso_local global %struct.TYPE_4__* null, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sony_nc_lid_resume_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sony_nc_lid_resume_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @LID_RESUME_S5, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i64, i64* %9, align 8
  %15 = icmp ugt i64 %14, 31
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %94

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @kstrtoul(i8* %20, i32 10, i64* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %11, align 8
  %25 = icmp ugt i64 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %19
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %94

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @LID_RESUME_MAX, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lid_ctl, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %43 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %42, i32 0, i32 0
  %44 = icmp eq i32* %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %49

46:                                               ; preds = %34
  %47 = load i32, i32* %12, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %30

49:                                               ; preds = %45, %30
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @LID_RESUME_MAX, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %5, align 8
  br label %94

56:                                               ; preds = %49
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lid_ctl, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = shl i32 1, %63
  %65 = or i32 %62, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %11, align 8
  br label %76

67:                                               ; preds = %56
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lid_ctl, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = shl i32 1, %71
  %73 = xor i32 %72, -1
  %74 = and i32 %70, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %67, %59
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lid_ctl, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %11, align 8
  %81 = shl i64 %80, 16
  %82 = or i64 %81, 256
  %83 = call i64 @sony_call_snc_handle(i32 %79, i64 %82, i32* %10)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i64, i64* @EIO, align 8
  %87 = sub i64 0, %86
  store i64 %87, i64* %5, align 8
  br label %94

88:                                               ; preds = %76
  %89 = load i64, i64* %11, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lid_ctl, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i64, i64* %9, align 8
  store i64 %93, i64* %5, align 8
  br label %94

94:                                               ; preds = %88, %85, %53, %26, %16
  %95 = load i64, i64* %5, align 8
  ret i64 %95
}

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @sony_call_snc_handle(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
