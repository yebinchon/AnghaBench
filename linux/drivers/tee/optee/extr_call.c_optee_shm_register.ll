; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_shm_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_optee_shm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { i32 }
%struct.tee_shm = type { i32 }
%struct.page = type { i32 }
%struct.optee_msg_arg = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OPTEE_MSG_CMD_REGISTER_SHM = common dso_local global i32 0, align 4
@OPTEE_MSG_ATTR_TYPE_TMEM_OUTPUT = common dso_local global i32 0, align 4
@OPTEE_MSG_ATTR_NONCONTIG = common dso_local global i32 0, align 4
@OPTEE_MSG_NONCONTIG_PAGE_SIZE = common dso_local global i32 0, align 4
@TEEC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optee_shm_register(%struct.tee_context* %0, %struct.tee_shm* %1, %struct.page** %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tee_context*, align 8
  %8 = alloca %struct.tee_shm*, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tee_shm*, align 8
  %13 = alloca %struct.optee_msg_arg*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tee_context* %0, %struct.tee_context** %7, align 8
  store %struct.tee_shm* %1, %struct.tee_shm** %8, align 8
  store %struct.page** %2, %struct.page*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.tee_shm* null, %struct.tee_shm** %12, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %115

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @check_mem_type(i64 %23, i64 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %6, align 4
  br label %115

30:                                               ; preds = %22
  %31 = load i64, i64* %10, align 8
  %32 = call i32* @optee_allocate_pages_list(i64 %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %115

38:                                               ; preds = %30
  %39 = load %struct.tee_context*, %struct.tee_context** %7, align 8
  %40 = call %struct.tee_shm* @get_msg_arg(%struct.tee_context* %39, i32 1, %struct.optee_msg_arg** %13, i32* %15)
  store %struct.tee_shm* %40, %struct.tee_shm** %12, align 8
  %41 = load %struct.tee_shm*, %struct.tee_shm** %12, align 8
  %42 = call i64 @IS_ERR(%struct.tee_shm* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.tee_shm*, %struct.tee_shm** %12, align 8
  %46 = call i32 @PTR_ERR(%struct.tee_shm* %45)
  store i32 %46, i32* %16, align 4
  br label %110

47:                                               ; preds = %38
  %48 = load i32*, i32** %14, align 8
  %49 = load %struct.page**, %struct.page*** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.tee_shm*, %struct.tee_shm** %8, align 8
  %52 = call i32 @tee_shm_get_page_offset(%struct.tee_shm* %51)
  %53 = call i32 @optee_fill_pages_list(i32* %48, %struct.page** %49, i64 %50, i32 %52)
  %54 = load i32, i32* @OPTEE_MSG_CMD_REGISTER_SHM, align 4
  %55 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %13, align 8
  %56 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @OPTEE_MSG_ATTR_TYPE_TMEM_OUTPUT, align 4
  %58 = load i32, i32* @OPTEE_MSG_ATTR_NONCONTIG, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %13, align 8
  %61 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load %struct.tee_shm*, %struct.tee_shm** %8, align 8
  %65 = ptrtoint %struct.tee_shm* %64 to i64
  %66 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %13, align 8
  %67 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i64 %65, i64* %71, align 8
  %72 = load %struct.tee_shm*, %struct.tee_shm** %8, align 8
  %73 = call i32 @tee_shm_get_size(%struct.tee_shm* %72)
  %74 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %13, align 8
  %75 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %73, i32* %79, align 4
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @virt_to_phys(i32* %80)
  %82 = load %struct.tee_shm*, %struct.tee_shm** %8, align 8
  %83 = call i32 @tee_shm_get_page_offset(%struct.tee_shm* %82)
  %84 = load i32, i32* @OPTEE_MSG_NONCONTIG_PAGE_SIZE, align 4
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %83, %85
  %87 = or i32 %81, %86
  %88 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %13, align 8
  %89 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %87, i32* %93, align 8
  %94 = load %struct.tee_context*, %struct.tee_context** %7, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i64 @optee_do_call_with_arg(%struct.tee_context* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %47
  %99 = load %struct.optee_msg_arg*, %struct.optee_msg_arg** %13, align 8
  %100 = getelementptr inbounds %struct.optee_msg_arg, %struct.optee_msg_arg* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TEEC_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98, %47
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %104, %98
  %108 = load %struct.tee_shm*, %struct.tee_shm** %12, align 8
  %109 = call i32 @tee_shm_free(%struct.tee_shm* %108)
  br label %110

110:                                              ; preds = %107, %44
  %111 = load i32*, i32** %14, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @optee_free_pages_list(i32* %111, i64 %112)
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %110, %35, %28, %19
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @check_mem_type(i64, i64) #1

declare dso_local i32* @optee_allocate_pages_list(i64) #1

declare dso_local %struct.tee_shm* @get_msg_arg(%struct.tee_context*, i32, %struct.optee_msg_arg**, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tee_shm*) #1

declare dso_local i32 @PTR_ERR(%struct.tee_shm*) #1

declare dso_local i32 @optee_fill_pages_list(i32*, %struct.page**, i64, i32) #1

declare dso_local i32 @tee_shm_get_page_offset(%struct.tee_shm*) #1

declare dso_local i32 @tee_shm_get_size(%struct.tee_shm*) #1

declare dso_local i32 @virt_to_phys(i32*) #1

declare dso_local i64 @optee_do_call_with_arg(%struct.tee_context*, i32) #1

declare dso_local i32 @tee_shm_free(%struct.tee_shm*) #1

declare dso_local i32 @optee_free_pages_list(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
