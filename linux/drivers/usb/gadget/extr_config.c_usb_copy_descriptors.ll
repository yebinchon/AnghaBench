; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_config.c_usb_copy_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_config.c_usb_copy_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_descriptor_header = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_descriptor_header** @usb_copy_descriptors(%struct.usb_descriptor_header** %0) #0 {
  %2 = alloca %struct.usb_descriptor_header**, align 8
  %3 = alloca %struct.usb_descriptor_header**, align 8
  %4 = alloca %struct.usb_descriptor_header**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_descriptor_header**, align 8
  store %struct.usb_descriptor_header** %0, %struct.usb_descriptor_header*** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %3, align 8
  store %struct.usb_descriptor_header** %9, %struct.usb_descriptor_header*** %4, align 8
  br label %10

10:                                               ; preds = %23, %1
  %11 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %4, align 8
  %12 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %11, align 8
  %13 = icmp ne %struct.usb_descriptor_header* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %4, align 8
  %16 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %15, align 8
  %17 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %14
  %24 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %4, align 8
  %25 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %24, i32 1
  store %struct.usb_descriptor_header** %25, %struct.usb_descriptor_header*** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = add i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kmalloc(i32 %37, i32 %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %28
  store %struct.usb_descriptor_header** null, %struct.usb_descriptor_header*** %2, align 8
  br label %83

43:                                               ; preds = %28
  %44 = load i8*, i8** %7, align 8
  %45 = bitcast i8* %44 to %struct.usb_descriptor_header**
  store %struct.usb_descriptor_header** %45, %struct.usb_descriptor_header*** %4, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = bitcast i8* %46 to %struct.usb_descriptor_header**
  store %struct.usb_descriptor_header** %47, %struct.usb_descriptor_header*** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr i8, i8* %52, i64 %51
  store i8* %53, i8** %7, align 8
  br label %54

54:                                               ; preds = %58, %43
  %55 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %3, align 8
  %56 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %55, align 8
  %57 = icmp ne %struct.usb_descriptor_header* %56, null
  br i1 %57, label %58, label %80

58:                                               ; preds = %54
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %3, align 8
  %61 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %60, align 8
  %62 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %3, align 8
  %63 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %62, align 8
  %64 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @memcpy(i8* %59, %struct.usb_descriptor_header* %61, i64 %65)
  %67 = load i8*, i8** %7, align 8
  %68 = bitcast i8* %67 to %struct.usb_descriptor_header*
  %69 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %4, align 8
  store %struct.usb_descriptor_header* %68, %struct.usb_descriptor_header** %69, align 8
  %70 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %4, align 8
  %71 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %70, i32 1
  store %struct.usb_descriptor_header** %71, %struct.usb_descriptor_header*** %4, align 8
  %72 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %3, align 8
  %73 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %72, align 8
  %74 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr i8, i8* %76, i64 %75
  store i8* %77, i8** %7, align 8
  %78 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %3, align 8
  %79 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %78, i32 1
  store %struct.usb_descriptor_header** %79, %struct.usb_descriptor_header*** %3, align 8
  br label %54

80:                                               ; preds = %54
  %81 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %4, align 8
  store %struct.usb_descriptor_header* null, %struct.usb_descriptor_header** %81, align 8
  %82 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %8, align 8
  store %struct.usb_descriptor_header** %82, %struct.usb_descriptor_header*** %2, align 8
  br label %83

83:                                               ; preds = %80, %42
  %84 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %2, align 8
  ret %struct.usb_descriptor_header** %84
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.usb_descriptor_header*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
