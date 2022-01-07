; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_get_sdram_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_get_sdram_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.sisusb_usb_data = type { i32 }

@sisusb_get_sdram_size.sdramtype = internal constant [13 x [5 x %struct.TYPE_5__]] [[5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 2, i32 12, i32 9, i32 64, i32 53 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1, i32 13, i32 9, i32 64, i32 68 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 2, i32 12, i32 8, i32 32, i32 49 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 2, i32 11, i32 9, i32 32, i32 37 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1, i32 12, i32 9, i32 32, i32 52 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1, i32 13, i32 8, i32 32, i32 64 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 2, i32 11, i32 8, i32 16, i32 33 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1, i32 12, i32 8, i32 16, i32 48 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1, i32 11, i32 9, i32 16, i32 36 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1, i32 11, i32 8, i32 8, i32 32 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 2, i32 9, i32 8, i32 4, i32 1 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1, i32 10, i32 8, i32 4, i32 16 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer], [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 1, i32 9, i32 8, i32 2, i32 0 }, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer, %struct.TYPE_5__ zeroinitializer]], align 16
@SISSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32*, i32, i32)* @sisusb_get_sdram_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_get_sdram_size(%struct.sisusb_usb_data* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sisusb_usb_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__, align 8
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 1, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %63, %4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 13
  br i1 %18, label %19, label %66

19:                                               ; preds = %16
  %20 = load i32, i32* @SISSR, align 4
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [13 x [5 x %struct.TYPE_5__]], [13 x [5 x %struct.TYPE_5__]]* @sisusb_get_sdram_size.sdramtype, i64 0, i64 %22
  %24 = getelementptr inbounds [5 x %struct.TYPE_5__], [5 x %struct.TYPE_5__]* %23, i64 0, i64 4
  %25 = bitcast %struct.TYPE_5__* %14 to i8*
  %26 = bitcast %struct.TYPE_5__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 20, i1 false)
  %27 = call i32 @SETIREGANDOR(i32 %20, i32 19, i32 128, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %14)
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  store i32 2, i32* %13, align 4
  br label %30

30:                                               ; preds = %59, %19
  %31 = load i32, i32* %13, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %30
  %34 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @sisusb_set_rank(%struct.sisusb_usb_data* %34, i32* %11, i32 %35, i32 %36, i32 %37, %struct.TYPE_5__** bitcast ([13 x [5 x %struct.TYPE_5__]]* @sisusb_get_sdram_size.sdramtype to %struct.TYPE_5__**), i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %59

45:                                               ; preds = %33
  %46 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @sisusb_check_ranks(%struct.sisusb_usb_data* %46, i32* %11, i32 %47, i32 %48, i32 %49, %struct.TYPE_5__** bitcast ([13 x [5 x %struct.TYPE_5__]]* @sisusb_get_sdram_size.sdramtype to %struct.TYPE_5__**))
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32*, i32** %7, align 8
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %68

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %13, align 4
  br label %30

62:                                               ; preds = %30
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %16

66:                                               ; preds = %16
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %55
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @SETIREGANDOR(i32, i32, i32, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sisusb_set_rank(%struct.sisusb_usb_data*, i32*, i32, i32, i32, %struct.TYPE_5__**, i32) #1

declare dso_local i32 @sisusb_check_ranks(%struct.sisusb_usb_data*, i32*, i32, i32, i32, %struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
