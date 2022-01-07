; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_fscrypt_user_key_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_fscrypt_user_key_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.key_preparsed_payload = type { i32 }

@FSCRYPT_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, %struct.key_preparsed_payload*)* @fscrypt_user_key_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscrypt_user_key_instantiate(%struct.key* %0, %struct.key_preparsed_payload* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.key_preparsed_payload*, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.key_preparsed_payload* %1, %struct.key_preparsed_payload** %4, align 8
  %5 = load %struct.key*, %struct.key** %3, align 8
  %6 = load i32, i32* @FSCRYPT_MAX_KEY_SIZE, align 4
  %7 = call i32 @key_payload_reserve(%struct.key* %5, i32 %6)
  ret i32 %7
}

declare dso_local i32 @key_payload_reserve(%struct.key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
