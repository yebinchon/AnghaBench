; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2789 x i8] c"Usage: loopback_test TEST [SIZE] ITERATIONS [SYSPATH] [DBGPATH]\0A\0A  Run TEST for a number of ITERATIONS with operation data SIZE bytes\0A  TEST may be 'ping' 'transfer' or 'sink'\0A  SIZE indicates the size of transfer <= greybus max payload bytes\0A  ITERATIONS indicates the number of times to execute TEST at SIZE bytes\0A             Note if ITERATIONS is set to zero then this utility will\0A             initiate an infinite (non terminating) test and exit\0A             without logging any metrics data\0A  SYSPATH indicates the sysfs path for the loopback greybus entries e.g.\0A          /sys/bus/greybus/devices\0A  DBGPATH indicates the debugfs path for the loopback greybus entries e.g.\0A          /sys/kernel/debug/gb_loopback/\0A Mandatory arguments\0A   -t     must be one of the test names - sink, transfer or ping\0A   -i     iteration count - the number of iterations to run the test over\0A Optional arguments\0A   -S     sysfs location - location for greybus 'endo' entries default /sys/bus/greybus/devices/\0A   -D     debugfs location - location for loopback debugfs entries default /sys/kernel/debug/gb_loopback/\0A   -s     size of data packet to send during test - defaults to zero\0A   -m     mask - a bit mask of connections to include example: -m 8 = 4th connection -m 9 = 1st and 4th connection etc\0A                 default is zero which means broadcast to all connections\0A   -v     verbose output\0A   -d     debug output\0A   -r     raw data output - when specified the full list of latency values are included in the output CSV\0A   -p     porcelain - when specified printout is in a user-friendly non-CSV format. This option suppresses writing to CSV file\0A   -a     aggregate - show aggregation of all enabled devices\0A   -l     list found loopback devices and exit\0A   -x     Async - Enable async transfers\0A   -o     Async Timeout - Timeout in uSec for async operations\0A   -O     Poll loop time out in seconds(max time a test is expected to last, default: 30sec)\0A   -c     Max number of outstanding operations for async operations\0A   -w     Wait in uSec between operations\0A   -z     Enable output to a CSV file (incompatible with -p)\0A   -f     When starting new loopback test, stop currently running tests on all devices\0AExamples:\0A  Send 10000 transfers with a packet size of 128 bytes to all active connections\0A  loopback_test -t transfer -s 128 -i 10000 -S /sys/bus/greybus/devices/ -D /sys/kernel/debug/gb_loopback/\0A  loopback_test -t transfer -s 128 -i 10000 -m 0\0A  Send 10000 transfers with a packet size of 128 bytes to connection 1 and 4\0A  loopback_test -t transfer -s 128 -i 10000 -m 9\0A  loopback_test -t ping -s 0 128 -i -S /sys/bus/greybus/devices/ -D /sys/kernel/debug/gb_loopback/\0A  loopback_test -t sink -s 2030 -i 32768 -S /sys/bus/greybus/devices/ -D /sys/kernel/debug/gb_loopback/\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([2789 x i8], [2789 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
