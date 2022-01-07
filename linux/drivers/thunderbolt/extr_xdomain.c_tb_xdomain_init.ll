; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdomain_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdomain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@xdomain_property_dir = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vendorid\00", align 1
@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Intel Corp.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"deviceid\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"devicerv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_xdomain_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32* @tb_property_create_dir(i32* null)
  store i32* %3, i32** @xdomain_property_dir, align 8
  %4 = load i32*, i32** @xdomain_property_dir, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %32

9:                                                ; preds = %0
  %10 = load i32*, i32** @xdomain_property_dir, align 8
  %11 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %12 = call i32 @tb_property_add_immediate(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** @xdomain_property_dir, align 8
  %14 = call i32 @tb_property_add_text(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** @xdomain_property_dir, align 8
  %16 = call i32 @tb_property_add_immediate(i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %17 = load i32*, i32** @xdomain_property_dir, align 8
  %18 = call %struct.TYPE_2__* (...) @utsname()
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @tb_property_add_text(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32*, i32** @xdomain_property_dir, align 8
  %23 = call i32 @tb_property_add_immediate(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 -2147483392)
  %24 = call i32 (...) @rebuild_property_block()
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %9
  %28 = load i32*, i32** @xdomain_property_dir, align 8
  %29 = call i32 @tb_property_free_dir(i32* %28)
  store i32* null, i32** @xdomain_property_dir, align 8
  br label %30

30:                                               ; preds = %27, %9
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %30, %6
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32* @tb_property_create_dir(i32*) #1

declare dso_local i32 @tb_property_add_immediate(i32*, i8*, i32) #1

declare dso_local i32 @tb_property_add_text(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @utsname(...) #1

declare dso_local i32 @rebuild_property_block(...) #1

declare dso_local i32 @tb_property_free_dir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
