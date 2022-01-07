; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sisusb_usb_data = type { i32, i32, i32, i32 }

@CM_ERASE = common dso_local global i32 0, align 4
@SISCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @sisusbcon_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusbcon_cursor(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sisusb_usb_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %10 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32 %11)
  store %struct.sisusb_usb_data* %12, %struct.sisusb_usb_data** %5, align 8
  %13 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %14 = icmp ne %struct.sisusb_usb_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %146

16:                                               ; preds = %2
  %17 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %18 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %19 = call i64 @sisusb_is_inactive(%struct.vc_data* %17, %struct.sisusb_usb_data* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %23 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %22, i32 0, i32 3
  %24 = call i32 @mutex_unlock(i32* %23)
  br label %146

25:                                               ; preds = %16
  %26 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %40 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %41 = call i32 @sisusbcon_set_start_address(%struct.sisusb_usb_data* %39, %struct.vc_data* %40)
  br label %42

42:                                               ; preds = %33, %25
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @CM_ERASE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %48 = load i32, i32* @SISCR, align 4
  %49 = call i32 @sisusb_setidxregor(%struct.sisusb_usb_data* %47, i32 %48, i32 10, i32 32)
  %50 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %51 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 4
  %52 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %53 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %52, i32 0, i32 3
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %146

55:                                               ; preds = %42
  %56 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %57 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %61 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = sdiv i32 %63, 2
  %65 = call i32 @sisusb_set_cursor(%struct.sisusb_usb_data* %56, i32 %64)
  %66 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %73, 10
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 2
  %77 = sub nsw i32 %69, %76
  store i32 %77, i32* %8, align 4
  %78 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %79 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 15
  switch i32 %81, label %110 [
    i32 133, label %82
    i32 129, label %87
    i32 132, label %94
    i32 131, label %101
    i32 130, label %109
    i32 128, label %111
  ]

82:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  %83 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %7, align 4
  br label %115

87:                                               ; preds = %55
  %88 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %89 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 %91, 3
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %7, align 4
  br label %115

94:                                               ; preds = %55
  %95 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %96 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sdiv i32 %98, 2
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %7, align 4
  br label %115

101:                                              ; preds = %55
  %102 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %103 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %105, 2
  %107 = sdiv i32 %106, 3
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %7, align 4
  br label %115

109:                                              ; preds = %55
  store i32 31, i32* %6, align 4
  store i32 30, i32* %7, align 4
  br label %115

110:                                              ; preds = %55
  br label %111

111:                                              ; preds = %55, %110
  %112 = load i32, i32* %8, align 4
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %111, %109, %101, %94, %87, %82
  %116 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %117 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %123 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %121, %115
  %128 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %129 = load i32, i32* @SISCR, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @sisusb_setidxreg(%struct.sisusb_usb_data* %128, i32 %129, i32 10, i32 %130)
  %132 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %133 = load i32, i32* @SISCR, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @sisusb_setidxregandor(%struct.sisusb_usb_data* %132, i32 %133, i32 11, i32 224, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %138 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %141 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %127, %121
  %143 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %144 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %143, i32 0, i32 3
  %145 = call i32 @mutex_unlock(i32* %144)
  br label %146

146:                                              ; preds = %142, %46, %21, %15
  ret void
}

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32) #1

declare dso_local i64 @sisusb_is_inactive(%struct.vc_data*, %struct.sisusb_usb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sisusbcon_set_start_address(%struct.sisusb_usb_data*, %struct.vc_data*) #1

declare dso_local i32 @sisusb_setidxregor(%struct.sisusb_usb_data*, i32, i32, i32) #1

declare dso_local i32 @sisusb_set_cursor(%struct.sisusb_usb_data*, i32) #1

declare dso_local i32 @sisusb_setidxreg(%struct.sisusb_usb_data*, i32, i32, i32) #1

declare dso_local i32 @sisusb_setidxregandor(%struct.sisusb_usb_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
