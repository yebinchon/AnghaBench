; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwmchip_add_with_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwmchip_add_with_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32, i32, i32, %struct.TYPE_4__*, %struct.pwm_device*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.TYPE_3__*)* }
%struct.TYPE_3__ = type { i32 }
%struct.pwm_device = type { i32, i32, %struct.TYPE_3__, %struct.pwm_chip* }

@EINVAL = common dso_local global i32 0, align 4
@pwm_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pwm_tree = common dso_local global i32 0, align 4
@allocated_pwms = common dso_local global i32 0, align 4
@pwm_chips = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwmchip_add_with_polarity(%struct.pwm_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = icmp ne %struct.pwm_chip* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %13 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %18 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %23 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %16, %11, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %156

29:                                               ; preds = %21
  %30 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %31 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @pwm_ops_check(%struct.TYPE_4__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %156

38:                                               ; preds = %29
  %39 = call i32 @mutex_lock(i32* @pwm_lock)
  %40 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %41 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %44 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @alloc_pwms(i32 %42, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %147

50:                                               ; preds = %38
  %51 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %52 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.pwm_device* @kcalloc(i32 %53, i32 24, i32 %54)
  %56 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %57 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %56, i32 0, i32 4
  store %struct.pwm_device* %55, %struct.pwm_device** %57, align 8
  %58 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %59 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %58, i32 0, i32 4
  %60 = load %struct.pwm_device*, %struct.pwm_device** %59, align 8
  %61 = icmp ne %struct.pwm_device* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %147

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %68 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %122, %65
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %72 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %125

75:                                               ; preds = %69
  %76 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %77 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %76, i32 0, i32 4
  %78 = load %struct.pwm_device*, %struct.pwm_device** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %78, i64 %80
  store %struct.pwm_device* %81, %struct.pwm_device** %6, align 8
  %82 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %83 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %84 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %83, i32 0, i32 3
  store %struct.pwm_chip* %82, %struct.pwm_chip** %84, align 8
  %85 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %86 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %87, %88
  %90 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %91 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %94 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %97 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %100 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.TYPE_3__*)*, i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.TYPE_3__*)** %102, align 8
  %104 = icmp ne i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.TYPE_3__*)* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %75
  %106 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %107 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %106, i32 0, i32 3
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.TYPE_3__*)*, i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.TYPE_3__*)** %109, align 8
  %111 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %112 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %113 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %114 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %113, i32 0, i32 2
  %115 = call i32 %110(%struct.pwm_chip* %111, %struct.pwm_device* %112, %struct.TYPE_3__* %114)
  br label %116

116:                                              ; preds = %105, %75
  %117 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %118 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %121 = call i32 @radix_tree_insert(i32* @pwm_tree, i32 %119, %struct.pwm_device* %120)
  br label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %69

125:                                              ; preds = %69
  %126 = load i32, i32* @allocated_pwms, align 4
  %127 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %128 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %131 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @bitmap_set(i32 %126, i32 %129, i32 %132)
  %134 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %135 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %134, i32 0, i32 2
  %136 = call i32 @INIT_LIST_HEAD(i32* %135)
  %137 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %138 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %137, i32 0, i32 2
  %139 = call i32 @list_add(i32* %138, i32* @pwm_chips)
  store i32 0, i32* %8, align 4
  %140 = load i32, i32* @CONFIG_OF, align 4
  %141 = call i64 @IS_ENABLED(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %125
  %144 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %145 = call i32 @of_pwmchip_add(%struct.pwm_chip* %144)
  br label %146

146:                                              ; preds = %143, %125
  br label %147

147:                                              ; preds = %146, %62, %49
  %148 = call i32 @mutex_unlock(i32* @pwm_lock)
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %153 = call i32 @pwmchip_sysfs_export(%struct.pwm_chip* %152)
  br label %154

154:                                              ; preds = %151, %147
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %35, %26
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @pwm_ops_check(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @alloc_pwms(i32, i32) #1

declare dso_local %struct.pwm_device* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.pwm_device*) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_pwmchip_add(%struct.pwm_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pwmchip_sysfs_export(%struct.pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
