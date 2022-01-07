; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_caldac_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_caldac_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.comedi_device = type { i32, %struct.ni_private*, %struct.ni_board_struct* }
%struct.ni_private = type { i32* }
%struct.ni_board_struct = type { i32* }
%struct.comedi_subdevice = type { i32, i32*, i32 }

@caldac_none = common dso_local global i32 0, align 4
@caldacs = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_N_CALDACS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"BUG! MAX_N_CALDACS too small\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @caldac_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @caldac_setup(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.ni_board_struct*, align 8
  %6 = alloca %struct.ni_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 2
  %18 = load %struct.ni_board_struct*, %struct.ni_board_struct** %17, align 8
  store %struct.ni_board_struct* %18, %struct.ni_board_struct** %5, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 1
  %21 = load %struct.ni_private*, %struct.ni_private** %20, align 8
  store %struct.ni_private* %21, %struct.ni_private** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.ni_board_struct*, %struct.ni_board_struct** %5, align 8
  %23 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @caldac_none, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %198

31:                                               ; preds = %2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caldacs, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %72, %31
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %75

41:                                               ; preds = %38
  %42 = load %struct.ni_board_struct*, %struct.ni_board_struct** %5, align 8
  %43 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @caldac_none, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %75

53:                                               ; preds = %41
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caldacs, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %53
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caldacs, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %38

75:                                               ; preds = %52, %38
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %164

82:                                               ; preds = %75
  %83 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %84 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %15, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @MAX_N_CALDACS, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %91 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %82
  %95 = load i32*, i32** %15, align 8
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %97 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %138, %94
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %141

102:                                              ; preds = %98
  %103 = load %struct.ni_board_struct*, %struct.ni_board_struct** %5, align 8
  %104 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %134, %102
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caldacs, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %111, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %110
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caldacs, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 1, %125
  %127 = sub nsw i32 %126, 1
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %119
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %110

137:                                              ; preds = %110
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %98

141:                                              ; preds = %98
  store i32 0, i32* %14, align 4
  br label %142

142:                                              ; preds = %160, %141
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %145 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %142
  %149 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %152 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = udiv i32 %157, 2
  %159 = call i32 @ni_write_caldac(%struct.comedi_device* %149, i32 %150, i32 %158)
  br label %160

160:                                              ; preds = %148
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %142

163:                                              ; preds = %142
  br label %198

164:                                              ; preds = %75
  %165 = load %struct.ni_board_struct*, %struct.ni_board_struct** %5, align 8
  %166 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %13, align 4
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @caldacs, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 1, %175
  %177 = sub nsw i32 %176, 1
  %178 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %179 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  store i32 0, i32* %14, align 4
  br label %180

180:                                              ; preds = %194, %164
  %181 = load i32, i32* %14, align 4
  %182 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %183 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %180
  %187 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %190 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sdiv i32 %191, 2
  %193 = call i32 @ni_write_caldac(%struct.comedi_device* %187, i32 %188, i32 %192)
  br label %194

194:                                              ; preds = %186
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %14, align 4
  br label %180

197:                                              ; preds = %180
  br label %198

198:                                              ; preds = %30, %197, %163
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ni_write_caldac(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
