; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_continue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i32* }
%struct.esas2r_disc_context = type { i32, i32 }

@DCF_DEV_CHANGE = common dso_local global i32 0, align 4
@DCF_DEV_SCAN = common dso_local global i32 0, align 4
@AF_DISC_PENDING = common dso_local global i32 0, align 4
@AF_DISC_IN_PROG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_disc_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_disc_continue(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca %struct.esas2r_request*, align 8
  %6 = alloca %struct.esas2r_disc_context*, align 8
  %7 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %5, align 8
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %9 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast i32* %10 to %struct.esas2r_disc_context*
  store %struct.esas2r_disc_context* %11, %struct.esas2r_disc_context** %6, align 8
  br label %12

12:                                               ; preds = %70, %2
  %13 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %6, align 8
  %14 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DCF_DEV_CHANGE, align 4
  %17 = load i32, i32* @DCF_DEV_SCAN, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  %22 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %6, align 8
  %23 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %62 [
    i32 133, label %25
    i32 134, label %29
    i32 135, label %33
    i32 128, label %37
    i32 131, label %41
    i32 129, label %45
    i32 130, label %49
    i32 132, label %53
  ]

25:                                               ; preds = %21
  %26 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %27 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %28 = call i32 @esas2r_disc_dev_remove(%struct.esas2r_adapter* %26, %struct.esas2r_request* %27)
  store i32 %28, i32* %7, align 4
  br label %66

29:                                               ; preds = %21
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %31 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %32 = call i32 @esas2r_disc_dev_add(%struct.esas2r_adapter* %30, %struct.esas2r_request* %31)
  store i32 %32, i32* %7, align 4
  br label %66

33:                                               ; preds = %21
  %34 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %35 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %36 = call i32 @esas2r_disc_block_dev_scan(%struct.esas2r_adapter* %34, %struct.esas2r_request* %35)
  store i32 %36, i32* %7, align 4
  br label %66

37:                                               ; preds = %21
  %38 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %39 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %40 = call i32 @esas2r_disc_raid_grp_info(%struct.esas2r_adapter* %38, %struct.esas2r_request* %39)
  store i32 %40, i32* %7, align 4
  br label %66

41:                                               ; preds = %21
  %42 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %43 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %44 = call i32 @esas2r_disc_part_info(%struct.esas2r_adapter* %42, %struct.esas2r_request* %43)
  store i32 %44, i32* %7, align 4
  br label %66

45:                                               ; preds = %21
  %46 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %47 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %48 = call i32 @esas2r_disc_passthru_dev_info(%struct.esas2r_adapter* %46, %struct.esas2r_request* %47)
  store i32 %48, i32* %7, align 4
  br label %66

49:                                               ; preds = %21
  %50 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %51 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %52 = call i32 @esas2r_disc_passthru_dev_addr(%struct.esas2r_adapter* %50, %struct.esas2r_request* %51)
  store i32 %52, i32* %7, align 4
  br label %66

53:                                               ; preds = %21
  %54 = load i32, i32* @DCF_DEV_CHANGE, align 4
  %55 = load i32, i32* @DCF_DEV_SCAN, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %6, align 8
  %59 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %66

62:                                               ; preds = %21
  %63 = call i32 (...) @esas2r_bugon()
  %64 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %6, align 8
  %65 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %64, i32 0, i32 1
  store i32 132, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %53, %49, %45, %41, %37, %33, %29, %25
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %89

70:                                               ; preds = %66
  br label %12

71:                                               ; preds = %12
  %72 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %73 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* @AF_DISC_PENDING, align 4
  %75 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %75, i32 0, i32 0
  %77 = call i32 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %71
  %80 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %81 = call i32 @esas2r_disc_fix_curr_requests(%struct.esas2r_adapter* %80)
  br label %82

82:                                               ; preds = %79, %71
  %83 = load i32, i32* @AF_DISC_IN_PROG, align 4
  %84 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %84, i32 0, i32 0
  %86 = call i32 @clear_bit(i32 %83, i32* %85)
  %87 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %88 = call i32 @esas2r_disc_start_port(%struct.esas2r_adapter* %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %82, %69
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @esas2r_disc_dev_remove(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_disc_dev_add(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_disc_block_dev_scan(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_disc_raid_grp_info(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_disc_part_info(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_disc_passthru_dev_info(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_disc_passthru_dev_addr(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_bugon(...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_disc_fix_curr_requests(%struct.esas2r_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @esas2r_disc_start_port(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
