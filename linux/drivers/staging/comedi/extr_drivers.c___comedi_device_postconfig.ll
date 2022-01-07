; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c___comedi_device_postconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c___comedi_device_postconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice*, i64, i64, i32 }
%struct.comedi_subdevice = type { i64, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i32*, i32, i64 }

@insn_device_inval = common dso_local global i64 0, align 8
@get_zero_valid_routes = common dso_local global i64 0, align 8
@COMEDI_SUBD_UNUSED = common dso_local global i64 0, align 8
@COMEDI_SUBD_DO = common dso_local global i64 0, align 8
@range_unknown = common dso_local global i32 0, align 4
@insn_rw_emulate_bits = common dso_local global i8* null, align 8
@insn_inval = common dso_local global i8* null, align 8
@poll_invalid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @__comedi_device_postconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__comedi_device_postconfig(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 4
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* @insn_device_inval, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 3
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* @get_zero_valid_routes, align 8
  %25 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %18
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %179, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %182

34:                                               ; preds = %28
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i64 %39
  store %struct.comedi_subdevice* %40, %struct.comedi_subdevice** %4, align 8
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @COMEDI_SUBD_UNUSED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %179

47:                                               ; preds = %34
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @COMEDI_SUBD_DO, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 32
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %69

66:                                               ; preds = %53
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 2
  store i32 -1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %58
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %72 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %77 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 3
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %80 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 11
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %86 = call i32 @__comedi_device_postconfig_async(%struct.comedi_device* %84, %struct.comedi_subdevice* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %183

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %78
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %94 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %93, i32 0, i32 9
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %99 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %104 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 9
  store i32* @range_unknown, i32** %104, align 8
  br label %105

105:                                              ; preds = %102, %97, %92
  %106 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %107 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %106, i32 0, i32 8
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %105
  %111 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %112 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %111, i32 0, i32 6
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i8*, i8** @insn_rw_emulate_bits, align 8
  %117 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %118 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %117, i32 0, i32 8
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %110, %105
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %121 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %120, i32 0, i32 7
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %119
  %125 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %126 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %125, i32 0, i32 6
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i8*, i8** @insn_rw_emulate_bits, align 8
  %131 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %132 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %131, i32 0, i32 7
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %129, %124, %119
  %134 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %135 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %134, i32 0, i32 8
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = load i8*, i8** @insn_inval, align 8
  %140 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %141 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %140, i32 0, i32 8
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %138, %133
  %143 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %144 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %143, i32 0, i32 7
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %142
  %148 = load i8*, i8** @insn_inval, align 8
  %149 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %150 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %149, i32 0, i32 7
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %147, %142
  %152 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %153 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %152, i32 0, i32 6
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %151
  %157 = load i8*, i8** @insn_inval, align 8
  %158 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %159 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %158, i32 0, i32 6
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %156, %151
  %161 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %162 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %161, i32 0, i32 5
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %160
  %166 = load i8*, i8** @insn_inval, align 8
  %167 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %168 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %167, i32 0, i32 5
  store i8* %166, i8** %168, align 8
  br label %169

169:                                              ; preds = %165, %160
  %170 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %171 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %169
  %175 = load i64, i64* @poll_invalid, align 8
  %176 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %177 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %176, i32 0, i32 4
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %174, %169
  br label %179

179:                                              ; preds = %178, %46
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %28

182:                                              ; preds = %28
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %182, %89
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @__comedi_device_postconfig_async(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
