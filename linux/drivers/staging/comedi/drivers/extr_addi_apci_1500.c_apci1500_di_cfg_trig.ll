; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1500.c_apci1500_di_cfg_trig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1500.c_apci1500_di_cfg_trig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.apci1500_private* }
%struct.apci1500_private = type { i32*, i32*, i32* }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"invalid digital trigger number (0=AND, 1=OR)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid digital trigger channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"invalid AND trigger configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1500_di_cfg_trig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1500_di_cfg_trig(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.apci1500_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 1
  %24 = load %struct.apci1500_private*, %struct.apci1500_private** %23, align 8
  store %struct.apci1500_private* %24, %struct.apci1500_private** %10, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %13, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = shl i32 %38, %39
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %12, align 4
  %45 = shl i32 1, %44
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %16, align 4
  %47 = load %struct.apci1500_private*, %struct.apci1500_private** %10, align 8
  %48 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %16, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %17, align 4
  %56 = load %struct.apci1500_private*, %struct.apci1500_private** %10, align 8
  %57 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %16, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %18, align 4
  %65 = load %struct.apci1500_private*, %struct.apci1500_private** %10, align 8
  %66 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %16, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ugt i32 %74, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %4
  %77 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_dbg(i32 %79, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %189

83:                                               ; preds = %4
  %84 = load i32, i32* %15, align 4
  %85 = icmp ugt i32 %84, 65535
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %189

93:                                               ; preds = %83
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %127 [
    i32 130, label %97
    i32 129, label %98
    i32 128, label %112
  ]

97:                                               ; preds = %93
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %130

98:                                               ; preds = %93
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %17, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %18, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %19, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %14, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %19, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %19, align 4
  br label %130

112:                                              ; preds = %93
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %17, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %15, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %18, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %19, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* %14, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %19, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %19, align 4
  br label %130

127:                                              ; preds = %93
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %189

130:                                              ; preds = %112, %98, %97
  %131 = load i32, i32* %11, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %164

133:                                              ; preds = %130
  store i32 0, i32* %20, align 4
  %134 = load i32, i32* %18, align 4
  %135 = and i32 %134, 255
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %21, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* %21, align 4
  %140 = call i32 @comedi_check_trigger_is_unique(i32 %139)
  %141 = load i32, i32* %20, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %20, align 4
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32, i32* %18, align 4
  %145 = lshr i32 %144, 8
  %146 = and i32 %145, 255
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %21, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load i32, i32* %21, align 4
  %151 = call i32 @comedi_check_trigger_is_unique(i32 %150)
  %152 = load i32, i32* %20, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %20, align 4
  br label %154

154:                                              ; preds = %149, %143
  %155 = load i32, i32* %20, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %159 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @dev_dbg(i32 %160, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %162 = load i32, i32* %20, align 4
  store i32 %162, i32* %5, align 4
  br label %189

163:                                              ; preds = %154
  br label %164

164:                                              ; preds = %163, %130
  %165 = load i32, i32* %17, align 4
  %166 = load %struct.apci1500_private*, %struct.apci1500_private** %10, align 8
  %167 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  %172 = load i32, i32* %18, align 4
  %173 = load %struct.apci1500_private*, %struct.apci1500_private** %10, align 8
  %174 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  %179 = load i32, i32* %19, align 4
  %180 = load %struct.apci1500_private*, %struct.apci1500_private** %10, align 8
  %181 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  %186 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %187 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %164, %157, %127, %86, %76
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
