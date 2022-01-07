; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_snums_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_snums_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@qe_snums_init.snum_init_76 = internal constant [76 x i32] [i32 4, i32 5, i32 12, i32 13, i32 20, i32 21, i32 28, i32 29, i32 36, i32 37, i32 44, i32 45, i32 52, i32 53, i32 136, i32 137, i32 152, i32 153, i32 168, i32 169, i32 184, i32 185, i32 200, i32 201, i32 216, i32 217, i32 232, i32 233, i32 68, i32 69, i32 76, i32 77, i32 84, i32 85, i32 92, i32 93, i32 100, i32 101, i32 108, i32 109, i32 116, i32 117, i32 124, i32 125, i32 132, i32 133, i32 140, i32 141, i32 148, i32 149, i32 156, i32 157, i32 164, i32 165, i32 172, i32 173, i32 180, i32 181, i32 188, i32 189, i32 196, i32 197, i32 204, i32 205, i32 212, i32 213, i32 220, i32 221, i32 228, i32 229, i32 236, i32 237, i32 244, i32 245, i32 252, i32 253], align 16
@qe_snums_init.snum_init_46 = internal constant [46 x i32] [i32 4, i32 5, i32 12, i32 13, i32 20, i32 21, i32 28, i32 29, i32 36, i32 37, i32 44, i32 45, i32 52, i32 53, i32 136, i32 137, i32 152, i32 153, i32 168, i32 169, i32 184, i32 185, i32 200, i32 201, i32 216, i32 217, i32 232, i32 233, i32 8, i32 9, i32 24, i32 25, i32 40, i32 41, i32 56, i32 57, i32 72, i32 73, i32 88, i32 89, i32 104, i32 105, i32 120, i32 121, i32 128, i32 129], align 16
@snum_state = common dso_local global i32 0, align 4
@QE_NUM_OF_SNUM = common dso_local global i32 0, align 4
@qe_num_of_snum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fsl,qe-snums\00", align 1
@snums = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"fsl,qe-num-snums\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"QE: unsupported value of fsl,qe-num-snums: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @qe_snums_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qe_snums_init() #0 {
  %1 = alloca %struct.device_node*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @snum_state, align 4
  %5 = load i32, i32* @QE_NUM_OF_SNUM, align 4
  %6 = call i32 @bitmap_zero(i32 %4, i32 %5)
  store i32 28, i32* @qe_num_of_snum, align 4
  %7 = call %struct.device_node* (...) @qe_get_device_node()
  store %struct.device_node* %7, %struct.device_node** %1, align 8
  %8 = load %struct.device_node*, %struct.device_node** %1, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %0
  %11 = load %struct.device_node*, %struct.device_node** %1, align 8
  %12 = load i32, i32* @snums, align 4
  %13 = load i32, i32* @QE_NUM_OF_SNUM, align 4
  %14 = call i32 @of_property_read_variable_u8_array(%struct.device_node* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12, i32 1, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.device_node*, %struct.device_node** %1, align 8
  %19 = call i32 @of_node_put(%struct.device_node* %18)
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* @qe_num_of_snum, align 4
  br label %46

21:                                               ; preds = %10
  %22 = load %struct.device_node*, %struct.device_node** %1, align 8
  %23 = call i32 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* @qe_num_of_snum)
  %24 = load %struct.device_node*, %struct.device_node** %1, align 8
  %25 = call i32 @of_node_put(%struct.device_node* %24)
  br label %26

26:                                               ; preds = %21, %0
  %27 = load i32, i32* @qe_num_of_snum, align 4
  %28 = icmp eq i32 %27, 76
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32* getelementptr inbounds ([76 x i32], [76 x i32]* @qe_snums_init.snum_init_76, i64 0, i64 0), i32** %2, align 8
  br label %41

30:                                               ; preds = %26
  %31 = load i32, i32* @qe_num_of_snum, align 4
  %32 = icmp eq i32 %31, 28
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @qe_num_of_snum, align 4
  %35 = icmp eq i32 %34, 46
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30
  store i32* getelementptr inbounds ([46 x i32], [46 x i32]* @qe_snums_init.snum_init_46, i64 0, i64 0), i32** %2, align 8
  br label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @qe_num_of_snum, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %46

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* @snums, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @qe_num_of_snum, align 4
  %45 = call i32 @memcpy(i32 %42, i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %37, %17
  ret void
}

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local %struct.device_node* @qe_get_device_node(...) #1

declare dso_local i32 @of_property_read_variable_u8_array(%struct.device_node*, i8*, i32, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
