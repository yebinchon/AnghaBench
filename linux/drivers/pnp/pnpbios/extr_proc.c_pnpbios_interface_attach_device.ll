; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_proc.c_pnpbios_interface_attach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_proc.c_pnpbios_interface_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_bios_node = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@proc_pnp = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@pnpbios_dont_use_current_config = common dso_local global i32 0, align 4
@pnpbios_proc_fops = common dso_local global i32 0, align 4
@proc_pnp_boot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnpbios_interface_attach_device(%struct.pnp_bios_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_bios_node*, align 8
  %4 = alloca [3 x i8], align 1
  store %struct.pnp_bios_node* %0, %struct.pnp_bios_node** %3, align 8
  %5 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %6 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %3, align 8
  %7 = getelementptr inbounds %struct.pnp_bios_node, %struct.pnp_bios_node* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @proc_pnp, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load i32, i32* @pnpbios_dont_use_current_config, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %20 = load i32, i32* @proc_pnp, align 4
  %21 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %3, align 8
  %22 = getelementptr inbounds %struct.pnp_bios_node, %struct.pnp_bios_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i64 @proc_create_data(i8* %19, i32 420, i32 %20, i32* @pnpbios_proc_fops, i8* %25)
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* @proc_pnp_boot, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %48

33:                                               ; preds = %27
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %35 = load i32, i32* @proc_pnp_boot, align 4
  %36 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %3, align 8
  %37 = getelementptr inbounds %struct.pnp_bios_node, %struct.pnp_bios_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 256
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i64 @proc_create_data(i8* %34, i32 420, i32 %35, i32* @pnpbios_proc_fops, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %48

45:                                               ; preds = %33
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %44, %30, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @proc_create_data(i8*, i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
