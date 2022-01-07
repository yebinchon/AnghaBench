; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_get_invoke_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_get_invoke_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"probing for conduit method from DT.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"missing \22method\22 property\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"hvc\00", align 1
@optee_smccc_hvc = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"smc\00", align 1
@optee_smccc_smc = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid \22method\22 property: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.device_node*)* @get_invoke_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_invoke_func(%struct.device_node* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call i64 @of_property_read_string(%struct.device_node* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32* @ERR_PTR(i32 %12)
  store i32* %13, i32** %2, align 8
  br label %33

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** @optee_smccc_hvc, align 8
  store i32* %19, i32** %2, align 8
  br label %33

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** @optee_smccc_smc, align 8
  store i32* %25, i32** %2, align 8
  br label %33

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32* @ERR_PTR(i32 %31)
  store i32* %32, i32** %2, align 8
  br label %33

33:                                               ; preds = %27, %24, %18, %9
  %34 = load i32*, i32** %2, align 8
  ret i32* %34
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
