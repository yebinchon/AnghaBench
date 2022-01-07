; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_ai_read_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_ai_read_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.jr3_pci_subdev_private* }
%struct.jr3_pci_subdev_private = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@state_jr3_done = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @jr3_pci_ai_read_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jr3_pci_ai_read_chan(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jr3_pci_subdev_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %13, align 8
  store %struct.jr3_pci_subdev_private* %14, %struct.jr3_pci_subdev_private** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %8, align 8
  %16 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @state_jr3_done, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %143

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ult i32 %22, 56
  br i1 %23, label %24, label %121

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = urem i32 %25, 8
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = udiv i32 %27, 8
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %118 [
    i32 0, label %30
    i32 1, label %41
    i32 2, label %52
    i32 3, label %63
    i32 4, label %74
    i32 5, label %85
    i32 6, label %96
    i32 7, label %107
  ]

30:                                               ; preds = %24
  %31 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %8, align 8
  %32 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 7
  %40 = call i32 @get_s16(i32* %39)
  store i32 %40, i32* %9, align 4
  br label %118

41:                                               ; preds = %24
  %42 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %8, align 8
  %43 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 6
  %51 = call i32 @get_s16(i32* %50)
  store i32 %51, i32* %9, align 4
  br label %118

52:                                               ; preds = %24
  %53 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %8, align 8
  %54 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  %62 = call i32 @get_s16(i32* %61)
  store i32 %62, i32* %9, align 4
  br label %118

63:                                               ; preds = %24
  %64 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %8, align 8
  %65 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = call i32 @get_s16(i32* %72)
  store i32 %73, i32* %9, align 4
  br label %118

74:                                               ; preds = %24
  %75 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %8, align 8
  %76 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = call i32 @get_s16(i32* %83)
  store i32 %84, i32* %9, align 4
  br label %118

85:                                               ; preds = %24
  %86 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %8, align 8
  %87 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = call i32 @get_s16(i32* %94)
  store i32 %95, i32* %9, align 4
  br label %118

96:                                               ; preds = %24
  %97 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %8, align 8
  %98 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = call i32 @get_s16(i32* %105)
  store i32 %106, i32* %9, align 4
  br label %118

107:                                              ; preds = %24
  %108 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %8, align 8
  %109 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = call i32 @get_s16(i32* %116)
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %24, %107, %96, %85, %74, %63, %52, %41, %30
  %119 = load i32, i32* %9, align 4
  %120 = add i32 %119, 16384
  store i32 %120, i32* %9, align 4
  br label %141

121:                                              ; preds = %21
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %122, 56
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %8, align 8
  %126 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = call i32 @get_u16(i32* %128)
  store i32 %129, i32* %9, align 4
  br label %140

130:                                              ; preds = %121
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 57
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %8, align 8
  %135 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = call i32 @get_u16(i32* %137)
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %133, %130
  br label %140

140:                                              ; preds = %139, %124
  br label %141

141:                                              ; preds = %140, %118
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %20
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @get_s16(i32*) #1

declare dso_local i32 @get_u16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
