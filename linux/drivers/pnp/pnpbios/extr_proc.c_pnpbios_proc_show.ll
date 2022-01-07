; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_proc.c_pnpbios_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_proc.c_pnpbios_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { i8* }
%struct.pnp_bios_node = type { i32, i32 }

@node_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @pnpbios_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpbios_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pnp_bios_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = ashr i64 %15, 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_info, i32 0, i32 0), align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.pnp_bios_node* @kzalloc(i32 %20, i32 %21)
  store %struct.pnp_bios_node* %22, %struct.pnp_bios_node** %7, align 8
  %23 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %7, align 8
  %24 = icmp ne %struct.pnp_bios_node* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %53

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %7, align 8
  %31 = call i64 @pnp_bios_get_dev_node(i64* %9, i32 %29, %struct.pnp_bios_node* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %7, align 8
  %35 = call i32 @kfree(%struct.pnp_bios_node* %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %53

38:                                               ; preds = %28
  %39 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %7, align 8
  %40 = getelementptr inbounds %struct.pnp_bios_node, %struct.pnp_bios_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %42, 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %7, align 8
  %47 = getelementptr inbounds %struct.pnp_bios_node, %struct.pnp_bios_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @seq_write(%struct.seq_file* %45, i32 %48, i32 %49)
  %51 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %7, align 8
  %52 = call i32 @kfree(%struct.pnp_bios_node* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %38, %33, %25
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.pnp_bios_node* @kzalloc(i32, i32) #1

declare dso_local i64 @pnp_bios_get_dev_node(i64*, i32, %struct.pnp_bios_node*) #1

declare dso_local i32 @kfree(%struct.pnp_bios_node*) #1

declare dso_local i32 @seq_write(%struct.seq_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
