; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_tty.c_sclp_get_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_tty.c_sclp_get_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gds_subvector = type { i32 }

@sclp_tty_tolower = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gds_subvector*)* @sclp_get_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_get_input(%struct.gds_subvector* %0) #0 {
  %2 = alloca %struct.gds_subvector*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.gds_subvector* %0, %struct.gds_subvector** %2, align 8
  %5 = load %struct.gds_subvector*, %struct.gds_subvector** %2, align 8
  %6 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %5, i64 1
  %7 = bitcast %struct.gds_subvector* %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load %struct.gds_subvector*, %struct.gds_subvector** %2, align 8
  %9 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 %11, 4
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* @sclp_tty_tolower, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @EBC_TOLOWER(i8* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @sclp_switch_cases(i8* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @sclp_ebcasc_str(i8* %24, i32 %25)
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @sclp_tty_input(i8* %27, i32 %28)
  ret void
}

declare dso_local i32 @EBC_TOLOWER(i8*, i32) #1

declare dso_local i32 @sclp_switch_cases(i8*, i32) #1

declare dso_local i32 @sclp_ebcasc_str(i8*, i32) #1

declare dso_local i32 @sclp_tty_input(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
