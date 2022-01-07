; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_key_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_key_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.encrypted_key_payload = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.key*)* @key_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @key_data(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.encrypted_key_payload*, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %4 = load %struct.key*, %struct.key** %2, align 8
  %5 = call %struct.encrypted_key_payload* @dereference_key_locked(%struct.key* %4)
  store %struct.encrypted_key_payload* %5, %struct.encrypted_key_payload** %3, align 8
  %6 = load %struct.key*, %struct.key** %2, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 0
  %8 = call i32 @lockdep_assert_held_read(i32* %7)
  %9 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %3, align 8
  %10 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  ret i8* %11
}

declare dso_local %struct.encrypted_key_payload* @dereference_key_locked(%struct.key*) #1

declare dso_local i32 @lockdep_assert_held_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
