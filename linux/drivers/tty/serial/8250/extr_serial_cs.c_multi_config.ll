; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_multi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_multi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, %struct.TYPE_4__**, i32, %struct.serial_info* }
%struct.TYPE_4__ = type { i32 }
%struct.serial_info = type { i32, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}*, {}* }

@multi_config_check = common dso_local global i32 0, align 4
@multi_config_check_notpicky = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"no usable port range found, giving up\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"no usable IRQ found, continuing...\0A\00", align 1
@MANFID_OXSEMI = common dso_local global i64 0, align 8
@MANFID_POSSIO = common dso_local global i64 0, align 8
@PRODID_POSSIO_GCC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @multi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multi_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.serial_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 4
  %10 = load %struct.serial_info*, %struct.serial_info** %9, align 8
  store %struct.serial_info* %10, %struct.serial_info** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %12 = load i32, i32* @multi_config_check, align 4
  %13 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %14 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %13, i32 0, i32 0
  %15 = call i64 @pcmcia_loop_config(%struct.pcmcia_device* %11, i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %1
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 8
  store i32 %25, i32* %6, align 4
  br label %40

26:                                               ; preds = %1
  %27 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %28 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %27, i32 0, i32 0
  store i32 2, i32* %28, align 8
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %30 = load i32, i32* @multi_config_check_notpicky, align 4
  %31 = call i64 @pcmcia_loop_config(%struct.pcmcia_device* %29, i32 %30, i32* %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 3
  %36 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %198

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %17
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %47 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %46, i32 0, i32 3
  %48 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %51 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %50, i32 0, i32 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %56 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %55, i32 0, i32 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = bitcast {}** %58 to i32 (%struct.pcmcia_device*)**
  %60 = load i32 (%struct.pcmcia_device*)*, i32 (%struct.pcmcia_device*)** %59, align 8
  %61 = icmp ne i32 (%struct.pcmcia_device*)* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %64 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %63, i32 0, i32 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = bitcast {}** %66 to i32 (%struct.pcmcia_device*)**
  %68 = load i32 (%struct.pcmcia_device*)*, i32 (%struct.pcmcia_device*)** %67, align 8
  %69 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %70 = call i32 %68(%struct.pcmcia_device* %69)
  br label %71

71:                                               ; preds = %62, %54, %49
  %72 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %73 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %198

79:                                               ; preds = %71
  %80 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %81 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MANFID_OXSEMI, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %87 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MANFID_POSSIO, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %162

91:                                               ; preds = %85
  %92 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %93 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PRODID_POSSIO_GCC, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %162

97:                                               ; preds = %91, %79
  %98 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %99 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %104 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %107, label %122

107:                                              ; preds = %102, %97
  %108 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %109 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %112 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @setup_serial(%struct.pcmcia_device* %108, %struct.serial_info* %109, i32 %110, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %116 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %117, i64 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %6, align 4
  br label %136

122:                                              ; preds = %102
  %123 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %124 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %125 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %126 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %127, i64 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %133 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @setup_serial(%struct.pcmcia_device* %123, %struct.serial_info* %124, i32 %131, i32 %134)
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %122, %107
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %139 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %141 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %140, i32 0, i32 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = icmp ne %struct.TYPE_3__* %142, null
  br i1 %143, label %144, label %161

144:                                              ; preds = %136
  %145 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %146 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %145, i32 0, i32 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = bitcast {}** %148 to i32 (%struct.pcmcia_device*)**
  %150 = load i32 (%struct.pcmcia_device*)*, i32 (%struct.pcmcia_device*)** %149, align 8
  %151 = icmp ne i32 (%struct.pcmcia_device*)* %150, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %144
  %153 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %154 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %153, i32 0, i32 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = bitcast {}** %156 to i32 (%struct.pcmcia_device*)**
  %158 = load i32 (%struct.pcmcia_device*)*, i32 (%struct.pcmcia_device*)** %157, align 8
  %159 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %160 = call i32 %158(%struct.pcmcia_device* %159)
  br label %161

161:                                              ; preds = %152, %144, %136
  store i32 0, i32* %2, align 4
  br label %198

162:                                              ; preds = %91, %85
  %163 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %164 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %165 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %166 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %165, i32 0, i32 2
  %167 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %167, i64 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %173 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @setup_serial(%struct.pcmcia_device* %163, %struct.serial_info* %164, i32 %171, i32 %174)
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %194, %162
  %177 = load i32, i32* %5, align 4
  %178 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %179 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sub nsw i32 %180, 1
  %182 = icmp slt i32 %177, %181
  br i1 %182, label %183, label %197

183:                                              ; preds = %176
  %184 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %185 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %5, align 4
  %188 = mul nsw i32 8, %187
  %189 = add nsw i32 %186, %188
  %190 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %191 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @setup_serial(%struct.pcmcia_device* %184, %struct.serial_info* %185, i32 %189, i32 %192)
  br label %194

194:                                              ; preds = %183
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %176

197:                                              ; preds = %176
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %161, %76, %33
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i64 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @setup_serial(%struct.pcmcia_device*, %struct.serial_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
