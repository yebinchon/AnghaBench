; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_atmio.c_ni_isapnp_find_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_atmio.c_ni_isapnp_find_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pnp_dev = type { i32 }

@ni_boards = common dso_local global %struct.TYPE_3__* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev**)* @ni_isapnp_find_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_isapnp_find_board(%struct.pnp_dev** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev**, align 8
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pnp_dev** %0, %struct.pnp_dev*** %3, align 8
  store %struct.pnp_dev* null, %struct.pnp_dev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %57, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ni_boards, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %6
  %12 = call i32 @ISAPNP_VENDOR(i8 signext 78, i8 signext 73, i8 signext 67)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ni_boards, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ISAPNP_FUNCTION(i32 %18)
  %20 = call %struct.pnp_dev* @pnp_find_dev(i32* null, i32 %12, i32 %19, i32* null)
  store %struct.pnp_dev* %20, %struct.pnp_dev** %4, align 8
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %22 = icmp ne %struct.pnp_dev* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %11
  br label %57

29:                                               ; preds = %23
  %30 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %31 = call i64 @pnp_device_attach(%struct.pnp_dev* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %57

34:                                               ; preds = %29
  %35 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %36 = call i64 @pnp_activate_dev(%struct.pnp_dev* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %40 = call i32 @pnp_device_detach(%struct.pnp_dev* %39)
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %71

43:                                               ; preds = %34
  %44 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %45 = call i32 @pnp_port_valid(%struct.pnp_dev* %44, i32 0)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %49 = call i32 @pnp_irq_valid(%struct.pnp_dev* %48, i32 0)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %53 = call i32 @pnp_device_detach(%struct.pnp_dev* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %71

56:                                               ; preds = %47
  br label %60

57:                                               ; preds = %33, %28
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %6

60:                                               ; preds = %56, %6
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ni_boards, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %62)
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %71

68:                                               ; preds = %60
  %69 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %70 = load %struct.pnp_dev**, %struct.pnp_dev*** %3, align 8
  store %struct.pnp_dev* %69, %struct.pnp_dev** %70, align 8
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %65, %51, %38
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.pnp_dev* @pnp_find_dev(i32*, i32, i32, i32*) #1

declare dso_local i32 @ISAPNP_VENDOR(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ISAPNP_FUNCTION(i32) #1

declare dso_local i64 @pnp_device_attach(%struct.pnp_dev*) #1

declare dso_local i64 @pnp_activate_dev(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_device_detach(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_port_valid(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_irq_valid(%struct.pnp_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
