; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenfs/extr_xensyms.c_xensyms_next_sym.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenfs/extr_xensyms.c_xensyms_next_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xensyms = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xenpf_symdata }
%struct.xenpf_symdata = type { i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xensyms*)* @xensyms_next_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xensyms_next_sym(%struct.xensyms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xensyms*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenpf_symdata*, align 8
  %6 = alloca i64, align 8
  store %struct.xensyms* %0, %struct.xensyms** %3, align 8
  %7 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %8 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.xenpf_symdata* %10, %struct.xenpf_symdata** %5, align 8
  %11 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %12 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %15 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @memset(i32 %13, i32 0, i64 %16)
  %18 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %19 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.xenpf_symdata*, %struct.xenpf_symdata** %5, align 8
  %22 = getelementptr inbounds %struct.xenpf_symdata, %struct.xenpf_symdata* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.xenpf_symdata*, %struct.xenpf_symdata** %5, align 8
  %24 = getelementptr inbounds %struct.xenpf_symdata, %struct.xenpf_symdata* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %27 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %26, i32 0, i32 1
  %28 = call i32 @HYPERVISOR_platform_op(%struct.TYPE_4__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %96

33:                                               ; preds = %1
  %34 = load %struct.xenpf_symdata*, %struct.xenpf_symdata** %5, align 8
  %35 = getelementptr inbounds %struct.xenpf_symdata, %struct.xenpf_symdata* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %38 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %88

44:                                               ; preds = %33
  %45 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %46 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kfree(i32 %47)
  %49 = load %struct.xenpf_symdata*, %struct.xenpf_symdata** %5, align 8
  %50 = getelementptr inbounds %struct.xenpf_symdata, %struct.xenpf_symdata* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %53 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %55 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @kzalloc(i64 %56, i32 %57)
  %59 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %60 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %62 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %44
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %96

68:                                               ; preds = %44
  %69 = load %struct.xenpf_symdata*, %struct.xenpf_symdata** %5, align 8
  %70 = getelementptr inbounds %struct.xenpf_symdata, %struct.xenpf_symdata* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %73 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @set_xen_guest_handle(i32 %71, i32 %74)
  %76 = load %struct.xenpf_symdata*, %struct.xenpf_symdata** %5, align 8
  %77 = getelementptr inbounds %struct.xenpf_symdata, %struct.xenpf_symdata* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.xensyms*, %struct.xensyms** %3, align 8
  %81 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %80, i32 0, i32 1
  %82 = call i32 @HYPERVISOR_platform_op(%struct.TYPE_4__* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %68
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %96

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %33
  %89 = load %struct.xenpf_symdata*, %struct.xenpf_symdata** %5, align 8
  %90 = getelementptr inbounds %struct.xenpf_symdata, %struct.xenpf_symdata* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 1, i32* %2, align 4
  br label %96

95:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %94, %85, %65, %31
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @HYPERVISOR_platform_op(%struct.TYPE_4__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @set_xen_guest_handle(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
