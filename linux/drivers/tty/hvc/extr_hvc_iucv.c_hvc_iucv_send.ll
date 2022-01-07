; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_hvc_iucv_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_iucv.c_hvc_iucv_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_iucv_private = type { i64, i32, i32, i32, i32 }
%struct.iucv_tty_buffer = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@IUCV_SEVERED = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@IUCV_DISCONN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hvc_iucv_private*)* @hvc_iucv_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_iucv_send(%struct.hvc_iucv_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hvc_iucv_private*, align 8
  %4 = alloca %struct.iucv_tty_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hvc_iucv_private* %0, %struct.hvc_iucv_private** %3, align 8
  %7 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %3, align 8
  %8 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IUCV_SEVERED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EPIPE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %105

15:                                               ; preds = %1
  %16 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %3, align 8
  %17 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IUCV_DISCONN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %105

24:                                               ; preds = %15
  %25 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %3, align 8
  %26 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %105

30:                                               ; preds = %24
  %31 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %3, align 8
  %32 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.iucv_tty_buffer* @alloc_tty_buffer(i32 %33, i32 %34)
  store %struct.iucv_tty_buffer* %35, %struct.iucv_tty_buffer** %4, align 8
  %36 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %4, align 8
  %37 = icmp ne %struct.iucv_tty_buffer* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %105

41:                                               ; preds = %30
  %42 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %3, align 8
  %48 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %3, align 8
  %51 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @memcpy(i32 %46, i32 %49, i32 %52)
  %54 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %3, align 8
  %55 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %4, align 8
  %59 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i64 %57, i64* %61, align 8
  %62 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %4, align 8
  %63 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @MSG_SIZE(i64 %66)
  %68 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %4, align 8
  %69 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %4, align 8
  %72 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %71, i32 0, i32 0
  %73 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %3, align 8
  %74 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %73, i32 0, i32 3
  %75 = call i32 @list_add_tail(i32* %72, i32* %74)
  %76 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %3, align 8
  %77 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %4, align 8
  %80 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %79, i32 0, i32 1
  %81 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %4, align 8
  %82 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %81, i32 0, i32 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = bitcast %struct.TYPE_3__* %83 to i8*
  %85 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %4, align 8
  %86 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @__iucv_message_send(i32 %78, %struct.TYPE_4__* %80, i32 0, i32 0, i8* %84, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %41
  %93 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %4, align 8
  %94 = getelementptr inbounds %struct.iucv_tty_buffer, %struct.iucv_tty_buffer* %93, i32 0, i32 0
  %95 = call i32 @list_del(i32* %94)
  %96 = load %struct.iucv_tty_buffer*, %struct.iucv_tty_buffer** %4, align 8
  %97 = call i32 @destroy_tty_buffer(%struct.iucv_tty_buffer* %96)
  br label %98

98:                                               ; preds = %92, %41
  %99 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %3, align 8
  %100 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %6, align 4
  %102 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %3, align 8
  %103 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %102, i32 0, i32 1
  store i32 0, i32* %103, align 8
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %98, %38, %29, %21, %12
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.iucv_tty_buffer* @alloc_tty_buffer(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @MSG_SIZE(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @__iucv_message_send(i32, %struct.TYPE_4__*, i32, i32, i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @destroy_tty_buffer(%struct.iucv_tty_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
