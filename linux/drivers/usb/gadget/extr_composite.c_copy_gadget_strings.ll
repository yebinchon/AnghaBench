; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_copy_gadget_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_copy_gadget_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget_string_container = type { i8* }
%struct.usb_gadget_strings = type { %struct.usb_string*, i32 }
%struct.usb_string = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_gadget_string_container* (%struct.usb_gadget_strings**, i32, i32)* @copy_gadget_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_gadget_string_container* @copy_gadget_strings(%struct.usb_gadget_strings** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_gadget_string_container*, align 8
  %5 = alloca %struct.usb_gadget_strings**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_gadget_string_container*, align 8
  %9 = alloca %struct.usb_gadget_strings**, align 8
  %10 = alloca %struct.usb_gadget_strings*, align 8
  %11 = alloca %struct.usb_string*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.usb_string*, align 8
  store %struct.usb_gadget_strings** %0, %struct.usb_gadget_strings*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 8, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = load i32, i32* %12, align 4
  %22 = zext i32 %21 to i64
  %23 = add i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 16, %26
  %28 = load i32, i32* %12, align 4
  %29 = zext i32 %28 to i64
  %30 = add i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = mul i64 %35, %37
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = add i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.usb_gadget_string_container* @kmalloc(i32 %43, i32 %44)
  store %struct.usb_gadget_string_container* %45, %struct.usb_gadget_string_container** %8, align 8
  %46 = load %struct.usb_gadget_string_container*, %struct.usb_gadget_string_container** %8, align 8
  %47 = icmp ne %struct.usb_gadget_string_container* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %3
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.usb_gadget_string_container* @ERR_PTR(i32 %50)
  store %struct.usb_gadget_string_container* %51, %struct.usb_gadget_string_container** %4, align 8
  br label %146

52:                                               ; preds = %3
  %53 = load %struct.usb_gadget_string_container*, %struct.usb_gadget_string_container** %8, align 8
  %54 = call %struct.usb_gadget_strings** @get_containers_gs(%struct.usb_gadget_string_container* %53)
  store %struct.usb_gadget_strings** %54, %struct.usb_gadget_strings*** %9, align 8
  %55 = load %struct.usb_gadget_string_container*, %struct.usb_gadget_string_container** %8, align 8
  %56 = getelementptr inbounds %struct.usb_gadget_string_container, %struct.usb_gadget_string_container* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %15, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, 1
  %60 = zext i32 %59 to i64
  %61 = mul i64 8, %60
  %62 = load i8*, i8** %15, align 8
  %63 = getelementptr i8, i8* %62, i64 %61
  store i8* %63, i8** %15, align 8
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %137, %52
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %140

68:                                               ; preds = %64
  %69 = load i8*, i8** %15, align 8
  %70 = bitcast i8* %69 to %struct.usb_gadget_strings*
  %71 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %9, align 8
  %72 = load i32, i32* %13, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %71, i64 %73
  store %struct.usb_gadget_strings* %70, %struct.usb_gadget_strings** %74, align 8
  %75 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %9, align 8
  %76 = load i32, i32* %13, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %75, i64 %77
  %79 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %78, align 8
  store %struct.usb_gadget_strings* %79, %struct.usb_gadget_strings** %10, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = getelementptr i8, i8* %80, i64 16
  store i8* %81, i8** %15, align 8
  %82 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %5, align 8
  %83 = load i32, i32* %13, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %82, i64 %84
  %86 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %85, align 8
  %87 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %10, align 8
  %90 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = bitcast i8* %91 to %struct.usb_string*
  %93 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %10, align 8
  %94 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %93, i32 0, i32 0
  store %struct.usb_string* %92, %struct.usb_string** %94, align 8
  %95 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %5, align 8
  %96 = load i32, i32* %13, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %95, i64 %97
  %99 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %98, align 8
  %100 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %99, i32 0, i32 0
  %101 = load %struct.usb_string*, %struct.usb_string** %100, align 8
  store %struct.usb_string* %101, %struct.usb_string** %16, align 8
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %127, %68
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %130

106:                                              ; preds = %102
  %107 = load i8*, i8** %15, align 8
  %108 = bitcast i8* %107 to %struct.usb_string*
  store %struct.usb_string* %108, %struct.usb_string** %11, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = getelementptr i8, i8* %109, i64 8
  store i8* %110, i8** %15, align 8
  %111 = load %struct.usb_string*, %struct.usb_string** %16, align 8
  %112 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %106
  %116 = load %struct.usb_string*, %struct.usb_string** %16, align 8
  %117 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.usb_string*, %struct.usb_string** %11, align 8
  %120 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  br label %124

121:                                              ; preds = %106
  %122 = load %struct.usb_string*, %struct.usb_string** %11, align 8
  %123 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %122, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %123, align 8
  br label %124

124:                                              ; preds = %121, %115
  %125 = load %struct.usb_string*, %struct.usb_string** %16, align 8
  %126 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %125, i32 1
  store %struct.usb_string* %126, %struct.usb_string** %16, align 8
  br label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %14, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %102

130:                                              ; preds = %102
  %131 = load i8*, i8** %15, align 8
  %132 = bitcast i8* %131 to %struct.usb_string*
  store %struct.usb_string* %132, %struct.usb_string** %11, align 8
  %133 = load %struct.usb_string*, %struct.usb_string** %11, align 8
  %134 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %133, i32 0, i32 0
  store i8* null, i8** %134, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = getelementptr i8, i8* %135, i64 8
  store i8* %136, i8** %15, align 8
  br label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %13, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %64

140:                                              ; preds = %64
  %141 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %9, align 8
  %142 = load i32, i32* %13, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %141, i64 %143
  store %struct.usb_gadget_strings* null, %struct.usb_gadget_strings** %144, align 8
  %145 = load %struct.usb_gadget_string_container*, %struct.usb_gadget_string_container** %8, align 8
  store %struct.usb_gadget_string_container* %145, %struct.usb_gadget_string_container** %4, align 8
  br label %146

146:                                              ; preds = %140, %48
  %147 = load %struct.usb_gadget_string_container*, %struct.usb_gadget_string_container** %4, align 8
  ret %struct.usb_gadget_string_container* %147
}

declare dso_local %struct.usb_gadget_string_container* @kmalloc(i32, i32) #1

declare dso_local %struct.usb_gadget_string_container* @ERR_PTR(i32) #1

declare dso_local %struct.usb_gadget_strings** @get_containers_gs(%struct.usb_gadget_string_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
