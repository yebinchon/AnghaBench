; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_alloc_sglist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_alloc_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.usbtest_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pattern = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (i32, i32, i32, %struct.usbtest_dev*, i32)* @alloc_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @alloc_sglist(i32 %0, i32 %1, i32 %2, %struct.usbtest_dev* %3, i32 %4) #0 {
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usbtest_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.usbtest_dev* %3, %struct.usbtest_dev** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %15, align 4
  %20 = load %struct.usbtest_dev*, %struct.usbtest_dev** %10, align 8
  %21 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @interface_to_usbdev(i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @get_maxpacket(i32 %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store %struct.scatterlist* null, %struct.scatterlist** %6, align 8
  br label %115

29:                                               ; preds = %5
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.scatterlist* @kmalloc_array(i32 %30, i32 4, i32 %31)
  store %struct.scatterlist* %32, %struct.scatterlist** %12, align 8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %34 = icmp ne %struct.scatterlist* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store %struct.scatterlist* null, %struct.scatterlist** %6, align 8
  br label %115

36:                                               ; preds = %29
  %37 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @sg_init_table(%struct.scatterlist* %37, i32 %38)
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %110, %36
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %113

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kzalloc(i32 %45, i32 %46)
  store i8* %47, i8** %17, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @free_sglist(%struct.scatterlist* %51, i32 %52)
  store %struct.scatterlist* null, %struct.scatterlist** %6, align 8
  br label %115

54:                                               ; preds = %44
  %55 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %56 = load i32, i32* %14, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %55, i64 %57
  %59 = load i8*, i8** %17, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @sg_set_buf(%struct.scatterlist* %58, i8* %59, i32 %60)
  %62 = load i32, i32* @pattern, align 4
  switch i32 %62, label %86 [
    i32 0, label %63
    i32 1, label %64
  ]

63:                                               ; preds = %54
  br label %86

64:                                               ; preds = %54
  store i32 0, i32* %18, align 4
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %13, align 4
  %72 = add i32 %70, %71
  %73 = load i32, i32* %16, align 4
  %74 = urem i32 %72, %73
  %75 = urem i32 %74, 63
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %17, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %17, align 8
  store i8 %76, i8* %77, align 1
  br label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %18, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %18, align 4
  br label %65

82:                                               ; preds = %65
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %54, %82, %63
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %15, align 4
  %92 = add i32 %91, %90
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %15, align 4
  %95 = urem i32 %94, %93
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %89
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %8, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %106, %89
  br label %109

109:                                              ; preds = %108, %86
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %14, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %40

113:                                              ; preds = %40
  %114 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  store %struct.scatterlist* %114, %struct.scatterlist** %6, align 8
  br label %115

115:                                              ; preds = %113, %50, %35, %28
  %116 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  ret %struct.scatterlist* %116
}

declare dso_local i32 @get_maxpacket(i32, i32) #1

declare dso_local i32 @interface_to_usbdev(i32) #1

declare dso_local %struct.scatterlist* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @free_sglist(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
