; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_cxacru_cm_get_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_cxacru_cm_get_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxacru_data = type { i32 }

@CMD_PACKET_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid data length from cm %#x: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"wrong index %#x in response to cm %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxacru_data*, i32, i8**, i32)* @cxacru_cm_get_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_cm_get_array(%struct.cxacru_data* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxacru_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cxacru_data* %0, %struct.cxacru_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @CMD_PACKET_SIZE, align 4
  %19 = sdiv i32 %18, 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %15, align 4
  %24 = sdiv i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %26, 2
  %28 = add nsw i32 %25, %27
  %29 = mul nsw i32 %28, 4
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kmalloc(i32 %30, i32 %31)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %137

38:                                               ; preds = %4
  %39 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @cxacru_cm(%struct.cxacru_data* %39, i32 %40, i32* null, i32 0, i32* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %133

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = sdiv i32 %48, 4
  store i32 %49, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %131, %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %132

54:                                               ; preds = %50
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @le32_to_cpu(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sdiv i32 %73, 2
  %75 = icmp sgt i32 %70, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %69, %65, %54
  %77 = call i64 (...) @printk_ratelimit()
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %81 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @usb_err(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %76
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %10, align 4
  br label %133

89:                                               ; preds = %69
  br label %90

90:                                               ; preds = %119, %89
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %17, align 4
  %93 = icmp ne i32 %91, 0
  br i1 %93, label %94, label %131

94:                                               ; preds = %90
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le32_to_cpu(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp uge i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %94
  %107 = call i64 (...) @printk_ratelimit()
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %111 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @usb_err(i32 %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %106
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %10, align 4
  br label %133

119:                                              ; preds = %94
  %120 = load i32*, i32** %12, align 8
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @le32_to_cpu(i32 %125)
  %127 = load i8**, i8*** %8, align 8
  %128 = load i32, i32* %14, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  store i8* %126, i8** %130, align 8
  br label %90

131:                                              ; preds = %90
  br label %50

132:                                              ; preds = %50
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %132, %116, %86, %46
  %134 = load i32*, i32** %12, align 8
  %135 = call i32 @kfree(i32* %134)
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %35
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @cxacru_cm(%struct.cxacru_data*, i32, i32*, i32, i32*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @usb_err(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
