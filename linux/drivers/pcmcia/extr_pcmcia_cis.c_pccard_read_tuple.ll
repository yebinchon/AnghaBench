; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_cis.c_pccard_read_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_cis.c_pccard_read_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32*, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no memory to read tuple\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BIND_FN_ALL = common dso_local global i32 0, align 4
@TUPLE_RETURN_COMMON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pccard_read_tuple(%struct.pcmcia_socket* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcmcia_socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kmalloc(i32 256, i32 %13)
  store i32* %14, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %19 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %18, i32 0, i32 0
  %20 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %57

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BIND_FN_ALL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i64, i64* @TUPLE_RETURN_COMMON, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @pccard_get_first_tuple(%struct.pcmcia_socket* %34, i32 %35, %struct.TYPE_5__* %10)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %53

40:                                               ; preds = %33
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32* %41, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 255, i32* %44, align 8
  %45 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %46 = call i32 @pccard_get_tuple_data(%struct.pcmcia_socket* %45, %struct.TYPE_5__* %10)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %53

50:                                               ; preds = %40
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @pcmcia_parse_tuple(%struct.TYPE_5__* %10, i8* %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %50, %49, %39
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pccard_get_first_tuple(%struct.pcmcia_socket*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pccard_get_tuple_data(%struct.pcmcia_socket*, %struct.TYPE_5__*) #1

declare dso_local i32 @pcmcia_parse_tuple(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
