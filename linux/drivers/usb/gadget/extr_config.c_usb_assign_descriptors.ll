; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_config.c_usb_assign_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_config.c_usb_assign_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i8*, i8*, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_gadget* }
%struct.usb_gadget = type { i32 }
%struct.usb_descriptor_header = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_assign_descriptors(%struct.usb_function* %0, %struct.usb_descriptor_header** %1, %struct.usb_descriptor_header** %2, %struct.usb_descriptor_header** %3, %struct.usb_descriptor_header** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_function*, align 8
  %8 = alloca %struct.usb_descriptor_header**, align 8
  %9 = alloca %struct.usb_descriptor_header**, align 8
  %10 = alloca %struct.usb_descriptor_header**, align 8
  %11 = alloca %struct.usb_descriptor_header**, align 8
  %12 = alloca %struct.usb_gadget*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %7, align 8
  store %struct.usb_descriptor_header** %1, %struct.usb_descriptor_header*** %8, align 8
  store %struct.usb_descriptor_header** %2, %struct.usb_descriptor_header*** %9, align 8
  store %struct.usb_descriptor_header** %3, %struct.usb_descriptor_header*** %10, align 8
  store %struct.usb_descriptor_header** %4, %struct.usb_descriptor_header*** %11, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %14 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.usb_gadget*, %struct.usb_gadget** %18, align 8
  store %struct.usb_gadget* %19, %struct.usb_gadget** %12, align 8
  %20 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %8, align 8
  %21 = icmp ne %struct.usb_descriptor_header** %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %5
  %23 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %8, align 8
  %24 = call i8* @usb_copy_descriptors(%struct.usb_descriptor_header** %23)
  %25 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %26 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %28 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %88

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %5
  %34 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %9, align 8
  %35 = icmp ne %struct.usb_descriptor_header** %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.usb_gadget*, %struct.usb_gadget** %12, align 8
  %38 = call i64 @gadget_is_dualspeed(%struct.usb_gadget* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %9, align 8
  %42 = call i8* @usb_copy_descriptors(%struct.usb_descriptor_header** %41)
  %43 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %44 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %46 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %88

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %36, %33
  %52 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %10, align 8
  %53 = icmp ne %struct.usb_descriptor_header** %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load %struct.usb_gadget*, %struct.usb_gadget** %12, align 8
  %56 = call i64 @gadget_is_superspeed(%struct.usb_gadget* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %10, align 8
  %60 = call i8* @usb_copy_descriptors(%struct.usb_descriptor_header** %59)
  %61 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %62 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %64 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %88

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %54, %51
  %70 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %71 = icmp ne %struct.usb_descriptor_header** %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load %struct.usb_gadget*, %struct.usb_gadget** %12, align 8
  %74 = call i64 @gadget_is_superspeed_plus(%struct.usb_gadget* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %11, align 8
  %78 = call i8* @usb_copy_descriptors(%struct.usb_descriptor_header** %77)
  %79 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %80 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %82 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %76
  br label %88

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %72, %69
  store i32 0, i32* %6, align 4
  br label %93

88:                                               ; preds = %85, %67, %49, %31
  %89 = load %struct.usb_function*, %struct.usb_function** %7, align 8
  %90 = call i32 @usb_free_all_descriptors(%struct.usb_function* %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %88, %87
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i8* @usb_copy_descriptors(%struct.usb_descriptor_header**) #1

declare dso_local i64 @gadget_is_dualspeed(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_superspeed(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_superspeed_plus(%struct.usb_gadget*) #1

declare dso_local i32 @usb_free_all_descriptors(%struct.usb_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
