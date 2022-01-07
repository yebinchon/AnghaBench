; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl730.c_pcl730_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl730.c_pcl730_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.pcl730_board* }
%struct.comedi_subdevice = type { i32, i8*, i8*, i32*, i64, i8*, i8*, i32 }
%struct.pcl730_board = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.comedi_devconfig = type { i32* }

@COMEDI_SUBD_DO = common dso_local global i8* null, align 8
@SDF_WRITABLE = common dso_local global i8* null, align 8
@range_digital = common dso_local global i32 0, align 4
@pcl730_do_insn_bits = common dso_local global i8* null, align 8
@COMEDI_SUBD_DI = common dso_local global i8* null, align 8
@SDF_READABLE = common dso_local global i8* null, align 8
@pcl730_di_insn_bits = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcl730_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl730_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.pcl730_board*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.pcl730_board*, %struct.pcl730_board** %11, align 8
  store %struct.pcl730_board* %12, %struct.pcl730_board** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %20 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @comedi_request_region(%struct.comedi_device* %13, i32 %18, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %197

27:                                               ; preds = %2
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %30 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %28, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %197

37:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  %38 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %39 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %81

42:                                               ; preds = %37
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i64 %48
  store %struct.comedi_subdevice* %49, %struct.comedi_subdevice** %7, align 8
  %50 = load i8*, i8** @COMEDI_SUBD_DO, align 8
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @SDF_WRITABLE, align 8
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %57 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 3
  store i32* @range_digital, i32** %64, align 8
  %65 = load i8*, i8** @pcl730_do_insn_bits, align 8
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 1
  store i8* null, i8** %69, align 8
  %70 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %71 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %42
  %75 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %77 = call i32 @pcl730_get_bits(%struct.comedi_device* %75, %struct.comedi_subdevice* %76)
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %74, %42
  br label %81

81:                                               ; preds = %80, %37
  %82 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %83 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %136

86:                                               ; preds = %81
  %87 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i64 %92
  store %struct.comedi_subdevice* %93, %struct.comedi_subdevice** %7, align 8
  %94 = load i8*, i8** @COMEDI_SUBD_DI, align 8
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %96 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @SDF_READABLE, align 8
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  %100 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %101 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 4
  store i64 %102, i64* %104, align 8
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %106 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %108 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %107, i32 0, i32 3
  store i32* @range_digital, i32** %108, align 8
  %109 = load i8*, i8** @pcl730_di_insn_bits, align 8
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %113 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %86
  br label %132

117:                                              ; preds = %86
  %118 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %119 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %130

123:                                              ; preds = %117
  %124 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %125 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* inttoptr (i64 1 to i8*), i8* null
  br label %130

130:                                              ; preds = %123, %122
  %131 = phi i8* [ inttoptr (i64 2 to i8*), %122 ], [ %129, %123 ]
  br label %132

132:                                              ; preds = %130, %116
  %133 = phi i8* [ inttoptr (i64 4 to i8*), %116 ], [ %131, %130 ]
  %134 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %132, %81
  %137 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %138 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %196

141:                                              ; preds = %136
  %142 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %143 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %142, i32 0, i32 0
  %144 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %144, i64 %147
  store %struct.comedi_subdevice* %148, %struct.comedi_subdevice** %7, align 8
  %149 = load i8*, i8** @COMEDI_SUBD_DO, align 8
  %150 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %150, i32 0, i32 6
  store i8* %149, i8** %151, align 8
  %152 = load i8*, i8** @SDF_WRITABLE, align 8
  %153 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %154 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %153, i32 0, i32 5
  store i8* %152, i8** %154, align 8
  %155 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %156 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %159 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %158, i32 0, i32 4
  store i64 %157, i64* %159, align 8
  %160 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %163 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %162, i32 0, i32 3
  store i32* @range_digital, i32** %163, align 8
  %164 = load i8*, i8** @pcl730_do_insn_bits, align 8
  %165 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %166 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  %167 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %168 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %167, i32 0, i32 1
  store i8* inttoptr (i64 2 to i8*), i8** %168, align 8
  %169 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %170 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %169, i32 0, i32 0
  %171 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %171, i64 %174
  store %struct.comedi_subdevice* %175, %struct.comedi_subdevice** %7, align 8
  %176 = load i8*, i8** @COMEDI_SUBD_DI, align 8
  %177 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %178 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %177, i32 0, i32 6
  store i8* %176, i8** %178, align 8
  %179 = load i8*, i8** @SDF_READABLE, align 8
  %180 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %181 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %180, i32 0, i32 5
  store i8* %179, i8** %181, align 8
  %182 = load %struct.pcl730_board*, %struct.pcl730_board** %6, align 8
  %183 = getelementptr inbounds %struct.pcl730_board, %struct.pcl730_board* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %186 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %185, i32 0, i32 4
  store i64 %184, i64* %186, align 8
  %187 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %188 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  %189 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %190 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %189, i32 0, i32 3
  store i32* @range_digital, i32** %190, align 8
  %191 = load i8*, i8** @pcl730_di_insn_bits, align 8
  %192 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %193 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %192, i32 0, i32 2
  store i8* %191, i8** %193, align 8
  %194 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %195 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %194, i32 0, i32 1
  store i8* inttoptr (i64 2 to i8*), i8** %195, align 8
  br label %196

196:                                              ; preds = %141, %136
  store i32 0, i32* %3, align 4
  br label %197

197:                                              ; preds = %196, %35, %25
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @pcl730_get_bits(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
