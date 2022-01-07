; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_bioscalls.c_pnp_bios_set_dev_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_bioscalls.c_pnp_bios_set_dev_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_bios_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"set_dev_node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnp_bios_set_dev_node(i32 %0, i8 signext %1, %struct.pnp_bios_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.pnp_bios_node*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8 %1, i8* %6, align 1
  store %struct.pnp_bios_node* %2, %struct.pnp_bios_node** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8, i8* %6, align 1
  %11 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %7, align 8
  %12 = call i32 @__pnp_bios_set_dev_node(i32 %9, i8 signext %10, %struct.pnp_bios_node* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @pnpbios_print_status(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load i8, i8* %6, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i8, i8* %6, align 1
  %24 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %7, align 8
  %25 = call i32 @pnp_bios_get_dev_node(i32* %5, i8 signext %23, %struct.pnp_bios_node* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %28, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @__pnp_bios_set_dev_node(i32, i8 signext, %struct.pnp_bios_node*) #1

declare dso_local i32 @pnpbios_print_status(i8*, i32) #1

declare dso_local i32 @pnp_bios_get_dev_node(i32*, i8 signext, %struct.pnp_bios_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
