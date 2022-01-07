; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_std.c_tape_std_mtfsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_std.c_tape_std_mtfsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i64, i32, i32 }
%struct.ccw1 = type { i32 }

@TO_FSB = common dso_local global i32 0, align 4
@MODE_SET_DB = common dso_local global i32 0, align 4
@FORSPACEBLOCK = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"FSR over tapemark\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_std_mtfsr(%struct.tape_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.ccw1*, align 8
  %8 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 2
  %11 = call %struct.tape_request* @tape_alloc_request(i32 %10, i32 0)
  store %struct.tape_request* %11, %struct.tape_request** %6, align 8
  %12 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %13 = call i64 @IS_ERR(%struct.tape_request* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.tape_request* %16)
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load i32, i32* @TO_FSB, align 4
  %20 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %21 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %23 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MODE_SET_DB, align 4
  %26 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %27 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ccw1* @tape_ccw_cc(i32 %24, i32 %25, i32 1, i32 %28)
  store %struct.ccw1* %29, %struct.ccw1** %7, align 8
  %30 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %31 = load i32, i32* @FORSPACEBLOCK, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.ccw1* @tape_ccw_repeat(%struct.ccw1* %30, i32 %31, i32 %32)
  store %struct.ccw1* %33, %struct.ccw1** %7, align 8
  %34 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %35 = load i32, i32* @NOP, align 4
  %36 = call %struct.ccw1* @tape_ccw_end(%struct.ccw1* %34, i32 %35, i32 0, i32* null)
  store %struct.ccw1* %36, %struct.ccw1** %7, align 8
  %37 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %38 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %39 = call i32 @tape_do_io(%struct.tape_device* %37, %struct.tape_request* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %18
  %43 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %44 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @DBF_LH(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %42, %18
  %50 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %51 = call i32 @tape_free_request(%struct.tape_request* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local %struct.ccw1* @tape_ccw_cc(i32, i32, i32, i32) #1

declare dso_local %struct.ccw1* @tape_ccw_repeat(%struct.ccw1*, i32, i32) #1

declare dso_local %struct.ccw1* @tape_ccw_end(%struct.ccw1*, i32, i32, i32*) #1

declare dso_local i32 @tape_do_io(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @DBF_LH(i32, i8*) #1

declare dso_local i32 @tape_free_request(%struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
