; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_set_bitfield.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_set_bitfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"called with invalid register %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @ni_set_bitfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_set_bitfield(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ni_private*, align 8
  %10 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.ni_private*, %struct.ni_private** %12, align 8
  store %struct.ni_private* %13, %struct.ni_private** %9, align 8
  %14 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %15 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %14, i32 0, i32 6
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %139 [
    i32 133, label %19
    i32 132, label %39
    i32 131, label %59
    i32 130, label %79
    i32 129, label %99
    i32 128, label %119
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %23 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %30 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %34 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %35 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ni_stc_writew(%struct.comedi_device* %33, i32 %36, i32 %37)
  br label %145

39:                                               ; preds = %4
  %40 = load i32, i32* %7, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %43 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %46, %47
  %49 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %50 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %54 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %55 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ni_stc_writew(%struct.comedi_device* %53, i32 %56, i32 %57)
  br label %145

59:                                               ; preds = %4
  %60 = load i32, i32* %7, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %63 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %70 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %74 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %75 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @ni_stc_writew(%struct.comedi_device* %73, i32 %76, i32 %77)
  br label %145

79:                                               ; preds = %4
  %80 = load i32, i32* %7, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %83 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %86, %87
  %89 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %90 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %94 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %95 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @ni_writeb(%struct.comedi_device* %93, i32 %96, i32 %97)
  br label %145

99:                                               ; preds = %4
  %100 = load i32, i32* %7, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %103 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %106, %107
  %109 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %110 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %114 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %115 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @ni_writeb(%struct.comedi_device* %113, i32 %116, i32 %117)
  br label %145

119:                                              ; preds = %4
  %120 = load i32, i32* %7, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %123 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %7, align 4
  %128 = and i32 %126, %127
  %129 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %130 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %134 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %135 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @ni_writeb(%struct.comedi_device* %133, i32 %136, i32 %137)
  br label %145

139:                                              ; preds = %4
  %140 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %141 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @dev_err(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %139, %119, %99, %79, %59, %39, %19
  %146 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %147 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %146, i32 0, i32 6
  %148 = load i64, i64* %10, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_writeb(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
