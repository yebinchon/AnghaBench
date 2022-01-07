; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_gstrings_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_gstrings_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_string = type { i32 }
%struct.usb_composite_dev = type { i32 }
%struct.usb_gadget_strings = type { %struct.usb_string* }
%struct.usb_gadget_string_container = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_string* @usb_gstrings_attach(%struct.usb_composite_dev* %0, %struct.usb_gadget_strings** %1, i32 %2) #0 {
  %4 = alloca %struct.usb_string*, align 8
  %5 = alloca %struct.usb_composite_dev*, align 8
  %6 = alloca %struct.usb_gadget_strings**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_gadget_string_container*, align 8
  %9 = alloca %struct.usb_gadget_strings**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_string*, align 8
  %14 = alloca %struct.usb_string*, align 8
  %15 = alloca i32, align 4
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %5, align 8
  store %struct.usb_gadget_strings** %1, %struct.usb_gadget_strings*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %26, %3
  %17 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %6, align 8
  %18 = load i32, i32* %11, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %17, i64 %19
  %21 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %20, align 8
  %22 = icmp ne %struct.usb_gadget_strings* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* %10, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %11, align 4
  br label %16

29:                                               ; preds = %16
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.usb_string* @ERR_PTR(i32 %34)
  store %struct.usb_string* %35, %struct.usb_string** %4, align 8
  br label %115

36:                                               ; preds = %29
  %37 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.usb_gadget_string_container* @copy_gadget_strings(%struct.usb_gadget_strings** %37, i32 %38, i32 %39)
  store %struct.usb_gadget_string_container* %40, %struct.usb_gadget_string_container** %8, align 8
  %41 = load %struct.usb_gadget_string_container*, %struct.usb_gadget_string_container** %8, align 8
  %42 = call i64 @IS_ERR(%struct.usb_gadget_string_container* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.usb_gadget_string_container*, %struct.usb_gadget_string_container** %8, align 8
  %46 = call %struct.usb_string* @ERR_CAST(%struct.usb_gadget_string_container* %45)
  store %struct.usb_string* %46, %struct.usb_string** %4, align 8
  br label %115

47:                                               ; preds = %36
  %48 = load %struct.usb_gadget_string_container*, %struct.usb_gadget_string_container** %8, align 8
  %49 = call %struct.usb_gadget_strings** @get_containers_gs(%struct.usb_gadget_string_container* %48)
  store %struct.usb_gadget_strings** %49, %struct.usb_gadget_strings*** %9, align 8
  %50 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %51 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %9, align 8
  %52 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %51, i64 0
  %53 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %52, align 8
  %54 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %53, i32 0, i32 0
  %55 = load %struct.usb_string*, %struct.usb_string** %54, align 8
  %56 = call i32 @usb_string_ids_tab(%struct.usb_composite_dev* %50, %struct.usb_string* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %110

60:                                               ; preds = %47
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %96, %60
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %61
  %66 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %9, align 8
  %67 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %66, i64 0
  %68 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %67, align 8
  %69 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %68, i32 0, i32 0
  %70 = load %struct.usb_string*, %struct.usb_string** %69, align 8
  store %struct.usb_string* %70, %struct.usb_string** %13, align 8
  %71 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %9, align 8
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %71, i64 %73
  %75 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %74, align 8
  %76 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %75, i32 0, i32 0
  %77 = load %struct.usb_string*, %struct.usb_string** %76, align 8
  store %struct.usb_string* %77, %struct.usb_string** %14, align 8
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %92, %65
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load %struct.usb_string*, %struct.usb_string** %13, align 8
  %84 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.usb_string*, %struct.usb_string** %14, align 8
  %87 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.usb_string*, %struct.usb_string** %14, align 8
  %89 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %88, i32 1
  store %struct.usb_string* %89, %struct.usb_string** %14, align 8
  %90 = load %struct.usb_string*, %struct.usb_string** %13, align 8
  %91 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %90, i32 1
  store %struct.usb_string* %91, %struct.usb_string** %13, align 8
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %15, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %78

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %61

99:                                               ; preds = %61
  %100 = load %struct.usb_gadget_string_container*, %struct.usb_gadget_string_container** %8, align 8
  %101 = getelementptr inbounds %struct.usb_gadget_string_container, %struct.usb_gadget_string_container* %100, i32 0, i32 0
  %102 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %103 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %102, i32 0, i32 0
  %104 = call i32 @list_add_tail(i32* %101, i32* %103)
  %105 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %9, align 8
  %106 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %105, i64 0
  %107 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %106, align 8
  %108 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %107, i32 0, i32 0
  %109 = load %struct.usb_string*, %struct.usb_string** %108, align 8
  store %struct.usb_string* %109, %struct.usb_string** %4, align 8
  br label %115

110:                                              ; preds = %59
  %111 = load %struct.usb_gadget_string_container*, %struct.usb_gadget_string_container** %8, align 8
  %112 = call i32 @kfree(%struct.usb_gadget_string_container* %111)
  %113 = load i32, i32* %12, align 4
  %114 = call %struct.usb_string* @ERR_PTR(i32 %113)
  store %struct.usb_string* %114, %struct.usb_string** %4, align 8
  br label %115

115:                                              ; preds = %110, %99, %44, %32
  %116 = load %struct.usb_string*, %struct.usb_string** %4, align 8
  ret %struct.usb_string* %116
}

declare dso_local %struct.usb_string* @ERR_PTR(i32) #1

declare dso_local %struct.usb_gadget_string_container* @copy_gadget_strings(%struct.usb_gadget_strings**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.usb_gadget_string_container*) #1

declare dso_local %struct.usb_string* @ERR_CAST(%struct.usb_gadget_string_container*) #1

declare dso_local %struct.usb_gadget_strings** @get_containers_gs(%struct.usb_gadget_string_container*) #1

declare dso_local i32 @usb_string_ids_tab(%struct.usb_composite_dev*, %struct.usb_string*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.usb_gadget_string_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
